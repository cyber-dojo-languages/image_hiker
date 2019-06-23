
class Hiker

  def initialize(external)
    @external = external
  end

  def sha
    ENV['SHA']
  end

  def ready?
    languages.ready? && ragger.ready? && runner.ready?
  end


  private

  def languages
    @external.languages
  end

  def ragger
    @external.ragger
  end

  def runner
    @external.runner
  end

  def log
    @external.log
  end

end
