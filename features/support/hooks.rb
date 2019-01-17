Before do
  $driver.start_driver
end




After do |scenario|
  if scenario.failed?
    if !File.directory?("screenshots")
      FileUtils.mkdir_p("screenshots")
    end

    file_name = Time.now.strftime("%Y-%m-%d_%H_%M_%S") + ".png"
    screenshot_file = File.join("screenshots", file_name)

    $driver.screenshot(screenshot_file)

    embed("#{screenshot_file}", "image/png")
  end

  $driver.driver_quit
end

AfterConfiguration do
  if File.directory?("screenshots")
    FileUtils.rm_r("screenshots")
  end
end


