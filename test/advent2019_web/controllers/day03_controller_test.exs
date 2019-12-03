defmodule Advent2019Web.Day03ControllerTest do
  use Advent2019Web.ConnCase
  import Advent2019Web.Day03Controller
  test "POST /day03/1", %{conn: conn} do
    conn =
      conn
      |> put_req_header("accept", "application/json")
      |> post("/day03/1", %{
        _json: %{
          a: ["R75", "D30", "R83", "U83", "L12", "D49", "R71", "U7", "L72"],
          b: ["U62", "R66", "U55", "R34", "D71", "R55", "D58", "R83"]
        }
      })

    assert json_response(conn, 200)["result"] == 159

    conn =
      build_conn()
      |> put_req_header("accept", "application/json")
      |> post("/day03/1", %{
        _json: %{
          a: ["R98", "U47", "R26", "D63", "R33", "U87", "L62", "D20", "R33", "U53", "R51"],
          b: ["U98", "R91", "D20", "R16", "D67", "R40", "U7", "R15", "U6", "R7"]
        }
      })

    assert json_response(conn, 200)["result"] == 135
  end

  test "segment intersection" do
    assert ortho_segment_intersection(%{
        x1: 12,
        y1: 7,
        x2: 14,
        y2: 7
      },
      %{
        x1: 13,
        y1: 5,
        x2: 13,
        y2: 11
      }) == %{x: 13, y: 7}
  end
end
