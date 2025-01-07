TARGET = ZGloom
LIBS = -lSDL2 -lSDL2_mixer -lxmp
CXX = g++
CFLAGS = -g
CXXFLAGS = -g

# Hakemistot
SRC_DIR = .
INI_DIR = inih
BUILD_DIR = build

.PHONY: default all clean

default: $(TARGET)
all: default

# Hae päätason ja inih-hakemiston tiedostot
HEADERS = $(wildcard $(SRC_DIR)/*.h $(INI_DIR)/*.h)
C_SOURCES = $(wildcard $(INI_DIR)/*.c)
CPP_SOURCES = $(wildcard $(SRC_DIR)/*.cpp)
OBJS = $(patsubst %.c, $(BUILD_DIR)/%.o, $(notdir $(C_SOURCES))) \
       $(patsubst %.cpp, $(BUILD_DIR)/%.o, $(notdir $(CPP_SOURCES)))

# Rakenna .o-tiedostot oikeista lähteistä
$(BUILD_DIR)/%.o: $(SRC_DIR)/%.cpp $(HEADERS)
	@mkdir -p $(BUILD_DIR)
	$(CXX) $(CXXFLAGS) -c $< -o $@

$(BUILD_DIR)/%.o: $(INI_DIR)/%.c $(HEADERS)
	@mkdir -p $(BUILD_DIR)
	$(CXX) $(CFLAGS) -c $< -o $@

.PRECIOUS: $(TARGET) $(OBJS)

$(TARGET): $(OBJS)
	$(CXX) $(OBJS) $(LIBS) -o $@

clean:
	rm -rf $(BUILD_DIR)
	rm -f $(TARGET)
