-- Step 1: Problem Statement
problemStatement :: String -> IO ()
problemStatement problem = putStrLn ("Problem: " ++ problem)

-- Step 2: Data Acquisition
dataAcquisition :: IO [String]
dataAcquisition = do
    putStrLn "Acquiring data..."
    return ["data_point_1", "data_point_2", "data_point_3"]  -- Simulate data

-- Step 3: Data Management
dataManagement :: [String] -> IO [String]
dataManagement rawData = do
    putStrLn "Managing data..."
    let cleanData = map (filter (/= '_')) rawData  -- Simple transformation
    return cleanData

-- Step 4: Analysis
dataAnalysis :: [String] -> IO [String]
dataAnalysis cleanData = do
    putStrLn "Analyzing data..."
    let results = map (++ " (analyzed)") cleanData  -- Simulate analysis
    return results

-- Step 5: Report Generation
generateReport :: [String] -> IO ()
generateReport analysisResults = do
    putStrLn "Generating report..."
    mapM_ putStrLn analysisResults

-- Workflow combining all steps
workflow :: String -> IO ()
workflow problem = do
    problemStatement problem
    rawData <- dataAcquisition
    cleanData <- dataManagement(rawData)
    analysisResults <- dataAnalysis(cleanData)
    generateReport(analysisResults)

-- Main function to run the workflow
main :: IO ()
main = workflow "Analyze user experience in qualitative research."
