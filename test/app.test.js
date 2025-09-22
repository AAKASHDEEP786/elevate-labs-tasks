const request = require("supertest");
const app = require("../server");

let server;

beforeAll(() => {
  server = app.listen(4000); 
});

afterAll(() => {
  server.close();

describe("GET /", () => {
  it("should return Hello from Node.js app!", async () => {
    const res = await request(server).get("/");
    expect(res.statusCode).toBe(200);
    expect(res.text).toBe("Hello from Node.js app!");
  });
});

