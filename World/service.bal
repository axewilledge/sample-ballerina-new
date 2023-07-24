import ballerina/http;

# A service representing a network-accessible API
# bound to port `9090`.
@display {
	label: "World",
	id: "World-ab9d3c2a-5873-4f8b-a567-519c58a78ddb"
}
service / on new http:Listener(9090) {

    # A resource for generating greetings
    # + name - the input string name
    # + return - string name with hello message or error
    resource function get greeting(string name) returns string|error {
        // Send a response back to the caller.
        if name is "" {
            return error("name should not be empty!");
        }
        return "Hello, " + name;
    }
}
