{
    "header": {
        "nodesVersions": {
            "FeatureMatching": "2.0", 
            "MeshFiltering": "3.0", 
            "Texturing": "6.0", 
            "Meshing": "7.0", 
            "CameraInit": "7.0", 
            "ImageMatching": "2.0", 
            "FeatureExtraction": "1.1", 
            "StructureFromMotion": "2.0"
        }, 
        "releaseVersion": "2021.1.0", 
        "fileVersion": "1.1"
    }, 
    "graph": {
        "Texturing_1": {
            "inputs": {
                "imagesFolder": "", 
                "downscale": 2, 
                "bumpMapping": {
                    "normalFileType": "exr", 
                    "enable": true, 
                    "bumpType": "Normal", 
                    "heightFileType": "exr"
                }, 
                "forceVisibleByAllVertices": false, 
                "fillHoles": false, 
                "multiBandDownscale": 4, 
                "useScore": true, 
                "displacementMapping": {
                    "displacementMappingFileType": "exr", 
                    "enable": true
                }, 
                "outputMeshFileType": "obj", 
                "angleHardThreshold": 90.0, 
                "textureSide": 8192, 
                "processColorspace": "sRGB", 
                "input": "{Meshing_1.output}", 
                "useUDIM": true, 
                "subdivisionTargetRatio": 0.8, 
                "padding": 5, 
                "inputRefMesh": "", 
                "correctEV": false, 
                "visibilityRemappingMethod": "PullPush", 
                "inputMesh": "{MeshFiltering_1.outputMesh}", 
                "verboseLevel": "info", 
                "colorMapping": {
                    "enable": true, 
                    "colorMappingFileType": "exr"
                }, 
                "bestScoreThreshold": 0.1, 
                "unwrapMethod": "Basic", 
                "multiBandNbContrib": {
                    "high": 1, 
                    "midHigh": 5, 
                    "low": 0, 
                    "midLow": 10
                }, 
                "flipNormals": false
            }, 
            "nodeType": "Texturing", 
            "uids": {
                "0": "1ed1516bf83493071547e69146be3f1218012e25"
            }, 
            "parallelization": {
                "blockSize": 0, 
                "split": 1, 
                "size": 1
            }, 
            "outputs": {
                "outputTextures": "{cache}/{nodeType}/{uid0}/texture_*.exr", 
                "outputMesh": "{cache}/{nodeType}/{uid0}/texturedMesh.{outputMeshFileTypeValue}", 
                "outputMaterial": "{cache}/{nodeType}/{uid0}/texturedMesh.mtl", 
                "output": "{cache}/{nodeType}/{uid0}/"
            }, 
            "position": [
                1400, 
                0
            ], 
            "internalFolder": "{cache}/{nodeType}/{uid0}/"
        }, 
        "Meshing_1": {
            "inputs": {
                "exportDebugTetrahedralization": false, 
                "useBoundingBox": false, 
                "maxInputPoints": 50000000, 
                "repartition": "multiResolution", 
                "helperPointsGridSize": 10, 
                "seed": 0, 
                "voteFilteringForWeaklySupportedSurfaces": true, 
                "verboseLevel": "info", 
                "outputMeshFileType": "obj", 
                "simGaussianSizeInit": 10.0, 
                "nPixelSizeBehind": 4.0, 
                "fullWeight": 1.0, 
                "depthMapsFolder": "", 
                "densify": false, 
                "simFactor": 15.0, 
                "maskHelperPointsWeight": 1.0, 
                "densifyScale": 20.0, 
                "input": "{StructureFromMotion_1.output}", 
                "addLandmarksToTheDensePointCloud": false, 
                "voteMarginFactor": 4.0, 
                "saveRawDensePointCloud": false, 
                "contributeMarginFactor": 2.0, 
                "estimateSpaceMinObservationAngle": 10, 
                "nbSolidAngleFilteringIterations": 2, 
                "minStep": 2, 
                "colorizeOutput": false, 
                "pixSizeMarginFinalCoef": 4.0, 
                "densifyNbFront": 1, 
                "boundingBox": {
                    "bboxScale": {
                        "y": 1.0, 
                        "x": 1.0, 
                        "z": 1.0
                    }, 
                    "bboxTranslation": {
                        "y": 0.0, 
                        "x": 0.0, 
                        "z": 0.0
                    }, 
                    "bboxRotation": {
                        "y": 0.0, 
                        "x": 0.0, 
                        "z": 0.0
                    }
                }, 
                "minSolidAngleRatio": 0.2, 
                "maxPoints": 5000000, 
                "addMaskHelperPoints": false, 
                "maxPointsPerVoxel": 1000000, 
                "angleFactor": 15.0, 
                "partitioning": "singleBlock", 
                "estimateSpaceFromSfM": true, 
                "minAngleThreshold": 1.0, 
                "pixSizeMarginInitCoef": 2.0, 
                "refineFuse": true, 
                "maxNbConnectedHelperPoints": 50, 
                "estimateSpaceMinObservations": 3, 
                "invertTetrahedronBasedOnNeighborsNbIterations": 10, 
                "maskBorderSize": 4, 
                "simGaussianSize": 10.0, 
                "densifyNbBack": 1
            }, 
            "nodeType": "Meshing", 
            "uids": {
                "0": "dc3d06f150a2601334a44174aa8e5523d3055468"
            }, 
            "parallelization": {
                "blockSize": 0, 
                "split": 1, 
                "size": 1
            }, 
            "outputs": {
                "output": "{cache}/{nodeType}/{uid0}/densePointCloud.abc", 
                "outputMesh": "{cache}/{nodeType}/{uid0}/mesh.{outputMeshFileTypeValue}"
            }, 
            "position": [
                1000, 
                0
            ], 
            "internalFolder": "{cache}/{nodeType}/{uid0}/"
        }, 
        "ImageMatching_1": {
            "inputs": {
                "minNbImages": 200, 
                "nbNeighbors": 5, 
                "tree": "${ALICEVISION_VOCTREE}", 
                "maxDescriptors": 500, 
                "verboseLevel": "info", 
                "weights": "", 
                "nbMatches": 40, 
                "input": "{FeatureExtraction_1.input}", 
                "method": "SequentialAndVocabularyTree", 
                "featuresFolders": [
                    "{FeatureExtraction_1.output}"
                ]
            }, 
            "nodeType": "ImageMatching", 
            "uids": {
                "0": "46fb9072ac753d60bec7dda9c8674b0568506ddf"
            }, 
            "parallelization": {
                "blockSize": 0, 
                "split": 1, 
                "size": 0
            }, 
            "outputs": {
                "output": "{cache}/{nodeType}/{uid0}/imageMatches.txt"
            }, 
            "position": [
                400, 
                0
            ], 
            "internalFolder": "{cache}/{nodeType}/{uid0}/"
        }, 
        "FeatureExtraction_1": {
            "inputs": {
                "verboseLevel": "info", 
                "maxThreads": 0, 
                "describerTypes": [
                    "dspsift"
                ], 
                "maxNbFeatures": 0, 
                "relativePeakThreshold": 0.01, 
                "forceCpuExtraction": true, 
                "masksFolder": "", 
                "contrastFiltering": "GridSort", 
                "describerQuality": "normal", 
                "gridFiltering": true, 
                "input": "{CameraInit_1.output}", 
                "describerPreset": "normal"
            }, 
            "nodeType": "FeatureExtraction", 
            "uids": {
                "0": "a07fb8d05b63327d05461954c2fd2a00f201275b"
            }, 
            "parallelization": {
                "blockSize": 40, 
                "split": 0, 
                "size": 0
            }, 
            "outputs": {
                "output": "{cache}/{nodeType}/{uid0}/"
            }, 
            "position": [
                200, 
                0
            ], 
            "internalFolder": "{cache}/{nodeType}/{uid0}/"
        }, 
        "StructureFromMotion_1": {
            "inputs": {
                "localizerEstimatorMaxIterations": 4096, 
                "minAngleForLandmark": 2.0, 
                "filterTrackForks": false, 
                "minNumberOfObservationsForTriangulation": 2, 
                "maxAngleInitialPair": 40.0, 
                "observationConstraint": "Scale", 
                "maxNumberOfMatches": 0, 
                "localizerEstimator": "acransac", 
                "describerTypes": "{FeatureMatching_1.describerTypes}", 
                "lockScenePreviouslyReconstructed": false, 
                "localBAGraphDistance": 1, 
                "minNbCamerasToRefinePrincipalPoint": 3, 
                "lockAllIntrinsics": false, 
                "input": "{FeatureMatching_1.input}", 
                "featuresFolders": "{FeatureMatching_1.featuresFolders}", 
                "useRigConstraint": true, 
                "rigMinNbCamerasForCalibration": 20, 
                "initialPairA": "", 
                "initialPairB": "", 
                "interFileExtension": ".abc", 
                "useLocalBA": true, 
                "computeStructureColor": true, 
                "matchesFolders": [
                    "{FeatureMatching_1.output}"
                ], 
                "minInputTrackLength": 2, 
                "useOnlyMatchesFromInputFolder": false, 
                "verboseLevel": "info", 
                "minAngleForTriangulation": 3.0, 
                "maxReprojectionError": 4.0, 
                "minAngleInitialPair": 5.0, 
                "minNumberOfMatches": 0, 
                "localizerEstimatorError": 0.0
            }, 
            "nodeType": "StructureFromMotion", 
            "uids": {
                "0": "89c3db0849ba07dfac5e97ca9e27dd690dc476ce"
            }, 
            "parallelization": {
                "blockSize": 0, 
                "split": 1, 
                "size": 0
            }, 
            "outputs": {
                "output": "{cache}/{nodeType}/{uid0}/sfm.abc", 
                "extraInfoFolder": "{cache}/{nodeType}/{uid0}/", 
                "outputViewsAndPoses": "{cache}/{nodeType}/{uid0}/cameras.sfm"
            }, 
            "position": [
                800, 
                0
            ], 
            "internalFolder": "{cache}/{nodeType}/{uid0}/"
        }, 
        "CameraInit_1": {
            "inputs": {
                "groupCameraFallback": "folder", 
                "intrinsics": [], 
                "viewIdRegex": ".*?(\\d+)", 
                "defaultFieldOfView": 45.0, 
                "allowedCameraModels": [
                    "pinhole", 
                    "radial1", 
                    "radial3", 
                    "brown", 
                    "fisheye4", 
                    "fisheye1", 
                    "3deanamorphic4", 
                    "3deradial4", 
                    "3declassicld"
                ], 
                "verboseLevel": "info", 
                "viewIdMethod": "metadata", 
                "viewpoints": [], 
                "useInternalWhiteBalance": true, 
                "sensorDatabase": "${ALICEVISION_SENSOR_DB}"
            }, 
            "nodeType": "CameraInit", 
            "uids": {
                "0": "f9436e97e444fa71a05aa5cf7639b206df8ba282"
            }, 
            "parallelization": {
                "blockSize": 0, 
                "split": 1, 
                "size": 0
            }, 
            "outputs": {
                "output": "{cache}/{nodeType}/{uid0}/cameraInit.sfm"
            }, 
            "position": [
                0, 
                0
            ], 
            "internalFolder": "{cache}/{nodeType}/{uid0}/"
        }, 
        "MeshFiltering_1": {
            "inputs": {
                "filteringSubset": "all", 
                "outputMeshFileType": "obj", 
                "inputMesh": "{Meshing_1.outputMesh}", 
                "filterTrianglesRatio": 0.0, 
                "smoothingSubset": "all", 
                "verboseLevel": "info", 
                "smoothingIterations": 5, 
                "filterLargeTrianglesFactor": 60.0, 
                "keepLargestMeshOnly": false, 
                "smoothingBoundariesNeighbours": 0, 
                "smoothingLambda": 1.0, 
                "filteringIterations": 1
            }, 
            "nodeType": "MeshFiltering", 
            "uids": {
                "0": "057d1647de39a617f79aad02a721938e5625ff64"
            }, 
            "parallelization": {
                "blockSize": 0, 
                "split": 1, 
                "size": 1
            }, 
            "outputs": {
                "outputMesh": "{cache}/{nodeType}/{uid0}/mesh.{outputMeshFileTypeValue}"
            }, 
            "position": [
                1200, 
                0
            ], 
            "internalFolder": "{cache}/{nodeType}/{uid0}/"
        }, 
        "FeatureMatching_1": {
            "inputs": {
                "verboseLevel": "info", 
                "describerTypes": "{FeatureExtraction_1.describerTypes}", 
                "exportDebugFiles": false, 
                "crossMatching": false, 
                "geometricError": 0.0, 
                "maxMatches": 0, 
                "matchFromKnownCameraPoses": false, 
                "savePutativeMatches": false, 
                "guidedMatching": false, 
                "imagePairsList": "{ImageMatching_1.output}", 
                "geometricEstimator": "acransac", 
                "geometricFilterType": "fundamental_matrix", 
                "maxIteration": 2048, 
                "distanceRatio": 0.8, 
                "input": "{ImageMatching_1.input}", 
                "photometricMatchingMethod": "ANN_L2", 
                "knownPosesGeometricErrorMax": 5.0, 
                "featuresFolders": "{ImageMatching_1.featuresFolders}"
            }, 
            "nodeType": "FeatureMatching", 
            "uids": {
                "0": "3b1f2c3fcfe0b94c65627c397a2671ba7594827d"
            }, 
            "parallelization": {
                "blockSize": 20, 
                "split": 0, 
                "size": 0
            }, 
            "outputs": {
                "output": "{cache}/{nodeType}/{uid0}/"
            }, 
            "position": [
                600, 
                0
            ], 
            "internalFolder": "{cache}/{nodeType}/{uid0}/"
        }
    }
}