# Export enviroment variables to commands
export

# Variables
go_cover_file=coverage.out

up:: ## Up containers from Docker compose
	@ git submodule update --init --recursive --remote
	@ docker-compose up --build

down:: ## Down local development enviroment
	@ docker-compose down --remove-orphans

test:: ## Do the tests in go
	@ git submodule update --init --recursive --remote
	@ go test -race -coverprofile $(go_cover_file) ./...

deps:: ## Download submodule dependencies
	git submodule update --init --recursive --remote

# git submodule add https://github.com/witalok2/test-dev-golang-api.git ./app
# git submodule add https://github.com/witalok2/test-dev-golang-worker.git ./worker