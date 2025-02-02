DIR=./A02
NAME=Assignment01

ifndef DIR
$(error DIR is not set)
endif

ifndef NAME
$(error NAME is not set)
endif

TERMINAL=gnome-terminal
FILEPATH=$(DIR)/$(NAME)
CFLAGS = -std=c++17 -O3
INCLUDE = -I$(DIR)/headers
LDFLAGS = -lglfw -lvulkan -ldl -lpthread -lX11 -lXxf86vm -lXrandr -lXi

all: clean build test

# shader:
# 	cd $(DIR)/shaders/ && ./compile.sh

build: $(FILEPATH).cpp
	g++ $(CFLAGS) -o $(FILEPATH) $(FILEPATH).cpp $(INCLUDE) $(LDFLAGS)

test: $(FILEPATH)
	cd $(DIR) && $(TERMINAL) -x bash -c "./$(NAME)"

clean:
	rm -f $(FILEPATH)