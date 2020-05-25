require('minitest/autorun')
require('minitest/reporters')
require_relative('../models/game')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new
class TestGame < MiniTest::Test


  def test_rs
    assert_equal("Rock wins", Game.play("rock", "scissors"))
  end

  def test_rp
    assert_equal("Paper wins", Game.play("rock", "paper"))
  end

  def test_ps
    assert_equal("Scissors wins", Game.play("paper", "scissors"))
  end

  def test_pr
    assert_equal("Paper wins", Game.play("paper", "rock"))
  end

  def test_sp
    assert_equal("Scissors wins", Game.play("scissors", "paper"))
  end

  def test_sr
    assert_equal("Rock wins", Game.play("scissors", "rock"))
  end

  def test_draw
    assert_equal("Draw", Game.play("paper", "paper"))
  end

  def test_assign_random
    p Game.play("paper", "")
  end




end
