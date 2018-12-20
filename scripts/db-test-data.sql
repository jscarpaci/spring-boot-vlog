SELECT setval('users_userid_seq', 1, false);
INSERT INTO users VALUES ('john', '{bcrypt}$2a$10$L89d91hR3R/WFeI5e8nx4u0/c8r8X535tIXAxiIGAZx8UkR0P18US', TRUE);
INSERT INTO authorities VALUES ('john', 'USERS');

insert into vloguser.videostatus (
  s3location,
  video_stored_date,
  job_status_recorded_date,
  userid,
  face_detect_submit_response,
  face_detect_result) values
('s3://ring-video.jscarpaci.com/2018-12-02-video-1.mp4',
 '2018-12-02 19:23:00-05',
 '2018-12-12 15:12:00-05',
 1,
'{
    "JobId": "b5cedc1ebf410550887434762228d0f0d7feb74328ddefd009b5e79dc52b2bfd"
}',
'{
    "comment-command-line-that-submitted-rekog-request" : "aws rekognition start-face-detection --video \"S3Object={Bucket=ring-video.jscarpaci.com,Name=2018-12-02-video-1.mp4}\" --notification-channel SNSTopicArn=arn:aws:sns:us-east-1:250490682808:video-processing-results,RoleArn=arn:aws:iam::250490682808:role/rekog-service-role --face-attributes ALL --job-tag videoProcessingJob01 --profile jscarpaci",
    "comment-command-line-that-generated-this" : "aws rekognition get-face-detection --job-id b5cedc1ebf410550887434762228d0f0d7feb74328ddefd009b5e79dc52b2bfd --profile jscarpaci",
    "Faces": [
        {
            "Timestamp": 4599,
            "Face": {
                "Confidence": 97.84402465820312,
                "Eyeglasses": {
                    "Confidence": 99.99998474121094,
                    "Value": false
                },
                "Sunglasses": {
                    "Confidence": 100.0,
                    "Value": false
                },
                "Gender": {
                    "Confidence": 50.03255081176758,
                    "Value": "Female"
                },
                "Landmarks": [
                    {
                        "Y": 0.1776207983493805,
                        "X": 0.422586590051651,
                        "Type": "eyeLeft"
                    },
                    {
                        "Y": 0.16749507188796997,
                        "X": 0.4008803367614746,
                        "Type": "eyeRight"
                    },
                    {
                        "Y": 0.09089954197406769,
                        "X": 0.42793625593185425,
                        "Type": "mouthLeft"
                    },
                    {
                        "Y": 0.08138079941272736,
                        "X": 0.41118961572647095,
                        "Type": "mouthRight"
                    },
                    {
                        "Y": 0.14061285555362701,
                        "X": 0.4391448199748993,
                        "Type": "nose"
                    },
                    {
                        "Y": 0.19150391221046448,
                        "X": 0.4237777292728424,
                        "Type": "leftEyeBrowLeft"
                    },
                    {
                        "Y": 0.20413348078727722,
                        "X": 0.4255956709384918,
                        "Type": "leftEyeBrowRight"
                    },
                    {
                        "Y": 0.20464546978473663,
                        "X": 0.4277956187725067,
                        "Type": "leftEyeBrowUp"
                    },
                    {
                        "Y": 0.19917833805084229,
                        "X": 0.41203027963638306,
                        "Type": "rightEyeBrowLeft"
                    },
                    {
                        "Y": 0.17708323895931244,
                        "X": 0.38181906938552856,
                        "Type": "rightEyeBrowRight"
                    },
                    {
                        "Y": 0.19792477786540985,
                        "X": 0.4001907408237457,
                        "Type": "rightEyeBrowUp"
                    },
                    {
                        "Y": 0.17476849257946014,
                        "X": 0.424186110496521,
                        "Type": "leftEyeLeft"
                    },
                    {
                        "Y": 0.17121413350105286,
                        "X": 0.4186666011810303,
                        "Type": "leftEyeRight"
                    },
                    {
                        "Y": 0.17918117344379425,
                        "X": 0.42428478598594666,
                        "Type": "leftEyeUp"
                    },
                    {
                        "Y": 0.17148052155971527,
                        "X": 0.42404666543006897,
                        "Type": "leftEyeDown"
                    },
                    {
                        "Y": 0.16523772478103638,
                        "X": 0.4045431315898895,
                        "Type": "rightEyeLeft"
                    },
                    {
                        "Y": 0.1605231910943985,
                        "X": 0.3922375440597534,
                        "Type": "rightEyeRight"
                    },
                    {
                        "Y": 0.16870629787445068,
                        "X": 0.4005435109138489,
                        "Type": "rightEyeUp"
                    },
                    {
                        "Y": 0.16087467968463898,
                        "X": 0.40067458152770996,
                        "Type": "rightEyeDown"
                    },
                    {
                        "Y": 0.12415386736392975,
                        "X": 0.43084654211997986,
                        "Type": "noseLeft"
                    },
                    {
                        "Y": 0.12159813195466995,
                        "X": 0.42038631439208984,
                        "Type": "noseRight"
                    },
                    {
                        "Y": 0.10663586109876633,
                        "X": 0.4297289252281189,
                        "Type": "mouthUp"
                    },
                    {
                        "Y": 0.08103081583976746,
                        "X": 0.42831552028656006,
                        "Type": "mouthDown"
                    },
                    {
                        "Y": 0.1776207983493805,
                        "X": 0.422586590051651,
                        "Type": "leftPupil"
                    },
                    {
                        "Y": 0.16749507188796997,
                        "X": 0.4008803367614746,
                        "Type": "rightPupil"
                    },
                    {
                        "Y": 0.15273667871952057,
                        "X": 0.394852876663208,
                        "Type": "upperJawlineLeft"
                    },
                    {
                        "Y": 0.07379238307476044,
                        "X": 0.40425997972488403,
                        "Type": "midJawlineLeft"
                    },
                    {
                        "Y": 0.03749343007802963,
                        "X": 0.4205149710178375,
                        "Type": "chinBottom"
                    },
                    {
                        "Y": 0.054917801171541214,
                        "X": 0.3610096871852875,
                        "Type": "midJawlineRight"
                    },
                    {
                        "Y": 0.12955427169799805,
                        "X": 0.34120693802833557,
                        "Type": "upperJawlineRight"
                    }
                ],
                "Pose": {
                    "Yaw": -55.80038070678711,
                    "Roll": -170.74571228027344,
                    "Pitch": 1.3835140466690063
                },
                "Emotions": [
                    {
                        "Confidence": 9.906991958618164,
                        "Type": "HAPPY"
                    },
                    {
                        "Confidence": 0.5955055356025696,
                        "Type": "CALM"
                    },
                    {
                        "Confidence": 0.4543682932853699,
                        "Type": "SURPRISED"
                    },
                    {
                        "Confidence": 81.16143798828125,
                        "Type": "SAD"
                    },
                    {
                        "Confidence": 0.0,
                        "Type": "CONFUSED"
                    },
                    {
                        "Confidence": 3.824191093444824,
                        "Type": "ANGRY"
                    },
                    {
                        "Confidence": 1.3398905992507935,
                        "Type": "DISGUSTED"
                    }
                ],
                "AgeRange": {
                    "High": 13,
                    "Low": 6
                },
                "EyesOpen": {
                    "Confidence": 99.87884521484375,
                    "Value": false
                },
                "BoundingBox": {
                    "Width": 0.1355411857366562,
                    "Top": -0.02736765518784523,
                    "Left": 0.3309735655784607,
                    "Height": 0.26660171151161194
                },
                "Smile": {
                    "Confidence": 55.428016662597656,
                    "Value": false
                },
                "MouthOpen": {
                    "Confidence": 55.246185302734375,
                    "Value": false
                },
                "Quality": {
                    "Sharpness": 32.20803451538086,
                    "Brightness": 73.08705139160156
                },
                "Mustache": {
                    "Confidence": 99.89688873291016,
                    "Value": false
                },
                "Beard": {
                    "Confidence": 95.76404571533203,
                    "Value": false
                }
            }
        },
        {
            "Timestamp": 4799,
            "Face": {
                "Confidence": 99.9999771118164,
                "Eyeglasses": {
                    "Confidence": 99.99726104736328,
                    "Value": false
                },
                "Sunglasses": {
                    "Confidence": 99.99986267089844,
                    "Value": false
                },
                "Gender": {
                    "Confidence": 63.22980499267578,
                    "Value": "Male"
                },
                "Landmarks": [
                    {
                        "Y": 0.0845002830028534,
                        "X": 0.46130499243736267,
                        "Type": "eyeLeft"
                    },
                    {
                        "Y": 0.12106677889823914,
                        "X": 0.4853157103061676,
                        "Type": "eyeRight"
                    },
                    {
                        "Y": 0.17005006968975067,
                        "X": 0.44359859824180603,
                        "Type": "mouthLeft"
                    },
                    {
                        "Y": 0.19961224496364594,
                        "X": 0.4623497724533081,
                        "Type": "mouthRight"
                    },
                    {
                        "Y": 0.1493217796087265,
                        "X": 0.48088645935058594,
                        "Type": "nose"
                    },
                    {
                        "Y": 0.05354614928364754,
                        "X": 0.44851842522621155,
                        "Type": "leftEyeBrowLeft"
                    },
                    {
                        "Y": 0.07026811689138412,
                        "X": 0.47929850220680237,
                        "Type": "leftEyeBrowRight"
                    },
                    {
                        "Y": 0.057092346251010895,
                        "X": 0.46804264187812805,
                        "Type": "leftEyeBrowUp"
                    },
                    {
                        "Y": 0.09256315231323242,
                        "X": 0.49379271268844604,
                        "Type": "rightEyeBrowLeft"
                    },
                    {
                        "Y": 0.11690568923950195,
                        "X": 0.4935864806175232,
                        "Type": "rightEyeBrowRight"
                    },
                    {
                        "Y": 0.09890306740999222,
                        "X": 0.4987390637397766,
                        "Type": "rightEyeBrowUp"
                    },
                    {
                        "Y": 0.07898445427417755,
                        "X": 0.4527830481529236,
                        "Type": "leftEyeLeft"
                    },
                    {
                        "Y": 0.09390459954738617,
                        "X": 0.46486541628837585,
                        "Type": "leftEyeRight"
                    },
                    {
                        "Y": 0.08260698616504669,
                        "X": 0.46180856227874756,
                        "Type": "leftEyeUp"
                    },
                    {
                        "Y": 0.0897689163684845,
                        "X": 0.4595048427581787,
                        "Type": "leftEyeDown"
                    },
                    {
                        "Y": 0.11568951606750488,
                        "X": 0.48020249605178833,
                        "Type": "rightEyeLeft"
                    },
                    {
                        "Y": 0.1270626038312912,
                        "X": 0.48756760358810425,
                        "Type": "rightEyeRight"
                    },
                    {
                        "Y": 0.11834753304719925,
                        "X": 0.487597793340683,
                        "Type": "rightEyeUp"
                    },
                    {
                        "Y": 0.12478309869766235,
                        "X": 0.4849642515182495,
                        "Type": "rightEyeDown"
                    },
                    {
                        "Y": 0.1500532180070877,
                        "X": 0.46339690685272217,
                        "Type": "noseLeft"
                    },
                    {
                        "Y": 0.16106313467025757,
                        "X": 0.4711083173751831,
                        "Type": "noseRight"
                    },
                    {
                        "Y": 0.1727990210056305,
                        "X": 0.46375954151153564,
                        "Type": "mouthUp"
                    },
                    {
                        "Y": 0.1944318264722824,
                        "X": 0.45461297035217285,
                        "Type": "mouthDown"
                    },
                    {
                        "Y": 0.0845002830028534,
                        "X": 0.46130499243736267,
                        "Type": "leftPupil"
                    },
                    {
                        "Y": 0.12106677889823914,
                        "X": 0.4853157103061676,
                        "Type": "rightPupil"
                    },
                    {
                        "Y": 0.057100698351860046,
                        "X": 0.40793946385383606,
                        "Type": "upperJawlineLeft"
                    },
                    {
                        "Y": 0.14534570276737213,
                        "X": 0.39671075344085693,
                        "Type": "midJawlineLeft"
                    },
                    {
                        "Y": 0.22872915863990784,
                        "X": 0.43467050790786743,
                        "Type": "chinBottom"
                    },
                    {
                        "Y": 0.21035657823085785,
                        "X": 0.44430437684059143,
                        "Type": "midJawlineRight"
                    },
                    {
                        "Y": 0.1382691115140915,
                        "X": 0.46691712737083435,
                        "Type": "upperJawlineRight"
                    }
                ],
                "Pose": {
                    "Yaw": 42.129390716552734,
                    "Roll": 41.66864776611328,
                    "Pitch": 20.540363311767578
                },
                "Emotions": [
                    {
                        "Confidence": 0.0,
                        "Type": "CONFUSED"
                    },
                    {
                        "Confidence": 0.03389839828014374,
                        "Type": "HAPPY"
                    },
                    {
                        "Confidence": 0.8156020045280457,
                        "Type": "SURPRISED"
                    },
                    {
                        "Confidence": 0.22849714756011963,
                        "Type": "SAD"
                    },
                    {
                        "Confidence": 5.69551944732666,
                        "Type": "ANGRY"
                    },
                    {
                        "Confidence": 69.97489166259766,
                        "Type": "DISGUSTED"
                    },
                    {
                        "Confidence": 22.55771827697754,
                        "Type": "CALM"
                    }
                ],
                "AgeRange": {
                    "High": 45,
                    "Low": 29
                },
                "EyesOpen": {
                    "Confidence": 98.93328857421875,
                    "Value": false
                },
                "BoundingBox": {
                    "Width": 0.1042066141963005,
                    "Top": 0.012991358526051044,
                    "Left": 0.4012400209903717,
                    "Height": 0.2207736223936081
                },
                "Smile": {
                    "Confidence": 96.35631561279297,
                    "Value": false
                },
                "MouthOpen": {
                    "Confidence": 84.80248260498047,
                    "Value": false
                },
                "Quality": {
                    "Sharpness": 38.89601135253906,
                    "Brightness": 73.70428466796875
                },
                "Mustache": {
                    "Confidence": 99.827880859375,
                    "Value": false
                },
                "Beard": {
                    "Confidence": 95.46564483642578,
                    "Value": false
                }
            }
        },
        {
            "Timestamp": 5000,
            "Face": {
                "Confidence": 99.90603637695312,
                "Eyeglasses": {
                    "Confidence": 99.979248046875,
                    "Value": false
                },
                "Sunglasses": {
                    "Confidence": 99.99738311767578,
                    "Value": false
                },
                "Gender": {
                    "Confidence": 81.12164306640625,
                    "Value": "Male"
                },
                "Landmarks": [
                    {
                        "Y": 0.11271058022975922,
                        "X": 0.5014330744743347,
                        "Type": "eyeLeft"
                    },
                    {
                        "Y": 0.1399591565132141,
                        "X": 0.5178895592689514,
                        "Type": "eyeRight"
                    },
                    {
                        "Y": 0.18186822533607483,
                        "X": 0.48577800393104553,
                        "Type": "mouthLeft"
                    },
                    {
                        "Y": 0.20328861474990845,
                        "X": 0.4982980489730835,
                        "Type": "mouthRight"
                    },
                    {
                        "Y": 0.168096125125885,
                        "X": 0.5215568542480469,
                        "Type": "nose"
                    },
                    {
                        "Y": 0.08688557147979736,
                        "X": 0.4900648593902588,
                        "Type": "leftEyeBrowLeft"
                    },
                    {
                        "Y": 0.10249976068735123,
                        "X": 0.5181398391723633,
                        "Type": "leftEyeBrowRight"
                    },
                    {
                        "Y": 0.09153745323419571,
                        "X": 0.5083480477333069,
                        "Type": "leftEyeBrowUp"
                    },
                    {
                        "Y": 0.11955981701612473,
                        "X": 0.5280734300613403,
                        "Type": "rightEyeBrowLeft"
                    },
                    {
                        "Y": 0.13458824157714844,
                        "X": 0.5214567184448242,
                        "Type": "rightEyeBrowRight"
                    },
                    {
                        "Y": 0.12331537902355194,
                        "X": 0.5300381779670715,
                        "Type": "rightEyeBrowUp"
                    },
                    {
                        "Y": 0.1076914370059967,
                        "X": 0.49387818574905396,
                        "Type": "leftEyeLeft"
                    },
                    {
                        "Y": 0.11965878307819366,
                        "X": 0.5035508275032043,
                        "Type": "leftEyeRight"
                    },
                    {
                        "Y": 0.11122417449951172,
                        "X": 0.501986563205719,
                        "Type": "leftEyeUp"
                    },
                    {
                        "Y": 0.11677491664886475,
                        "X": 0.4998219609260559,
                        "Type": "leftEyeDown"
                    },
                    {
                        "Y": 0.13622590899467468,
                        "X": 0.5142925977706909,
                        "Type": "rightEyeLeft"
                    },
                    {
                        "Y": 0.1440443992614746,
                        "X": 0.5184059739112854,
                        "Type": "rightEyeRight"
                    },
                    {
                        "Y": 0.13828632235527039,
                        "X": 0.520157516002655,
                        "Type": "rightEyeUp"
                    },
                    {
                        "Y": 0.14320088922977448,
                        "X": 0.5177865624427795,
                        "Type": "rightEyeDown"
                    },
                    {
                        "Y": 0.16665586829185486,
                        "X": 0.5041642189025879,
                        "Type": "noseLeft"
                    },
                    {
                        "Y": 0.17401310801506042,
                        "X": 0.5091009140014648,
                        "Type": "noseRight"
                    },
                    {
                        "Y": 0.1841094046831131,
                        "X": 0.5043146014213562,
                        "Type": "mouthUp"
                    },
                    {
                        "Y": 0.2003936767578125,
                        "X": 0.4956788420677185,
                        "Type": "mouthDown"
                    },
                    {
                        "Y": 0.11271058022975922,
                        "X": 0.5014330744743347,
                        "Type": "leftPupil"
                    },
                    {
                        "Y": 0.1399591565132141,
                        "X": 0.5178895592689514,
                        "Type": "rightPupil"
                    },
                    {
                        "Y": 0.08271480351686478,
                        "X": 0.4477633833885193,
                        "Type": "upperJawlineLeft"
                    },
                    {
                        "Y": 0.15344862639904022,
                        "X": 0.4392834007740021,
                        "Type": "midJawlineLeft"
                    },
                    {
                        "Y": 0.22492218017578125,
                        "X": 0.47624310851097107,
                        "Type": "chinBottom"
                    },
                    {
                        "Y": 0.2028525024652481,
                        "X": 0.4731176495552063,
                        "Type": "midJawlineRight"
                    },
                    {
                        "Y": 0.1444091498851776,
                        "X": 0.4895907938480377,
                        "Type": "upperJawlineRight"
                    }
                ],
                "Pose": {
                    "Yaw": 50.61492919921875,
                    "Roll": 48.44514083862305,
                    "Pitch": 27.622982025146484
                },
                "Emotions": [
                    {
                        "Confidence": 8.441681861877441,
                        "Type": "SURPRISED"
                    },
                    {
                        "Confidence": 56.977622985839844,
                        "Type": "CALM"
                    },
                    {
                        "Confidence": 0.0,
                        "Type": "CONFUSED"
                    },
                    {
                        "Confidence": 0.05156566575169563,
                        "Type": "HAPPY"
                    },
                    {
                        "Confidence": 23.028913497924805,
                        "Type": "DISGUSTED"
                    },
                    {
                        "Confidence": 0.39865389466285706,
                        "Type": "SAD"
                    },
                    {
                        "Confidence": 10.028800010681152,
                        "Type": "ANGRY"
                    }
                ],
                "AgeRange": {
                    "High": 57,
                    "Low": 38
                },
                "EyesOpen": {
                    "Confidence": 98.94985961914062,
                    "Value": false
                },
                "BoundingBox": {
                    "Width": 0.10577304661273956,
                    "Top": 0.03099595382809639,
                    "Left": 0.44218599796295166,
                    "Height": 0.21945436298847198
                },
                "Smile": {
                    "Confidence": 98.63525390625,
                    "Value": false
                },
                "MouthOpen": {
                    "Confidence": 88.05256652832031,
                    "Value": false
                },
                "Quality": {
                    "Sharpness": 38.89601135253906,
                    "Brightness": 72.79242706298828
                },
                "Mustache": {
                    "Confidence": 99.80513763427734,
                    "Value": false
                },
                "Beard": {
                    "Confidence": 93.86184692382812,
                    "Value": false
                }
            }
        },
        {
            "Timestamp": 5200,
            "Face": {
                "Confidence": 99.99921417236328,
                "Eyeglasses": {
                    "Confidence": 99.98491668701172,
                    "Value": false
                },
                "Sunglasses": {
                    "Confidence": 99.99300384521484,
                    "Value": false
                },
                "Gender": {
                    "Confidence": 66.01898193359375,
                    "Value": "Female"
                },
                "Landmarks": [
                    {
                        "Y": 0.133408322930336,
                        "X": 0.5574378967285156,
                        "Type": "eyeLeft"
                    },
                    {
                        "Y": 0.16099879145622253,
                        "X": 0.5656313896179199,
                        "Type": "eyeRight"
                    },
                    {
                        "Y": 0.1944175809621811,
                        "X": 0.5366606712341309,
                        "Type": "mouthLeft"
                    },
                    {
                        "Y": 0.2158142775297165,
                        "X": 0.5422120094299316,
                        "Type": "mouthRight"
                    },
                    {
                        "Y": 0.1891072541475296,
                        "X": 0.5720837712287903,
                        "Type": "nose"
                    },
                    {
                        "Y": 0.10808740556240082,
                        "X": 0.5490429401397705,
                        "Type": "leftEyeBrowLeft"
                    },
                    {
                        "Y": 0.12773527204990387,
                        "X": 0.573951780796051,
                        "Type": "leftEyeBrowRight"
                    },
                    {
                        "Y": 0.11632025241851807,
                        "X": 0.5659860372543335,
                        "Type": "leftEyeBrowUp"
                    },
                    {
                        "Y": 0.14521458745002747,
                        "X": 0.579060435295105,
                        "Type": "rightEyeBrowLeft"
                    },
                    {
                        "Y": 0.15650847554206848,
                        "X": 0.5664769411087036,
                        "Type": "rightEyeBrowRight"
                    },
                    {
                        "Y": 0.1487286239862442,
                        "X": 0.5786028504371643,
                        "Type": "rightEyeBrowUp"
                    },
                    {
                        "Y": 0.127744659781456,
                        "X": 0.550517737865448,
                        "Type": "leftEyeLeft"
                    },
                    {
                        "Y": 0.1406896859407425,
                        "X": 0.5573919415473938,
                        "Type": "leftEyeRight"
                    },
                    {
                        "Y": 0.13271595537662506,
                        "X": 0.5576755404472351,
                        "Type": "leftEyeUp"
                    },
                    {
                        "Y": 0.1372915655374527,
                        "X": 0.5550481677055359,
                        "Type": "leftEyeDown"
                    },
                    {
                        "Y": 0.15781094133853912,
                        "X": 0.5633962154388428,
                        "Type": "rightEyeLeft"
                    },
                    {
                        "Y": 0.1654786318540573,
                        "X": 0.5645688772201538,
                        "Type": "rightEyeRight"
                    },
                    {
                        "Y": 0.16081023216247559,
                        "X": 0.5680756568908691,
                        "Type": "rightEyeUp"
                    },
                    {
                        "Y": 0.16472966969013214,
                        "X": 0.5653699636459351,
                        "Type": "rightEyeDown"
                    },
                    {
                        "Y": 0.18401654064655304,
                        "X": 0.5551202893257141,
                        "Type": "noseLeft"
                    },
                    {
                        "Y": 0.19112427532672882,
                        "X": 0.5571016669273376,
                        "Type": "noseRight"
                    },
                    {
                        "Y": 0.19927304983139038,
                        "X": 0.5530556440353394,
                        "Type": "mouthUp"
                    },
                    {
                        "Y": 0.21194200217723846,
                        "X": 0.543157160282135,
                        "Type": "mouthDown"
                    },
                    {
                        "Y": 0.133408322930336,
                        "X": 0.5574378967285156,
                        "Type": "leftPupil"
                    },
                    {
                        "Y": 0.16099879145622253,
                        "X": 0.5656313896179199,
                        "Type": "rightPupil"
                    },
                    {
                        "Y": 0.09438048303127289,
                        "X": 0.5059067606925964,
                        "Type": "upperJawlineLeft"
                    },
                    {
                        "Y": 0.15566270053386688,
                        "X": 0.49232345819473267,
                        "Type": "midJawlineLeft"
                    },
                    {
                        "Y": 0.22862845659255981,
                        "X": 0.5216081738471985,
                        "Type": "chinBottom"
                    },
                    {
                        "Y": 0.20696932077407837,
                        "X": 0.5120093822479248,
                        "Type": "midJawlineRight"
                    },
                    {
                        "Y": 0.15841688215732574,
                        "X": 0.5300807356834412,
                        "Type": "upperJawlineRight"
                    }
                ],
                "Pose": {
                    "Yaw": 57.59777069091797,
                    "Roll": 57.71172332763672,
                    "Pitch": 20.39309310913086
                },
                "Emotions": [
                    {
                        "Confidence": 36.68757629394531,
                        "Type": "CALM"
                    },
                    {
                        "Confidence": 14.047259330749512,
                        "Type": "DISGUSTED"
                    },
                    {
                        "Confidence": 0.5951733589172363,
                        "Type": "HAPPY"
                    },
                    {
                        "Confidence": 2.0621790885925293,
                        "Type": "SAD"
                    },
                    {
                        "Confidence": 26.895362854003906,
                        "Type": "ANGRY"
                    },
                    {
                        "Confidence": 0.0,
                        "Type": "CONFUSED"
                    },
                    {
                        "Confidence": 17.047948837280273,
                        "Type": "SURPRISED"
                    }
                ],
                "AgeRange": {
                    "High": 43,
                    "Low": 26
                },
                "EyesOpen": {
                    "Confidence": 96.33313751220703,
                    "Value": false
                },
                "BoundingBox": {
                    "Width": 0.08535773307085037,
                    "Top": 0.04687603935599327,
                    "Left": 0.4952324628829956,
                    "Height": 0.21656759083271027
                },
                "Smile": {
                    "Confidence": 98.42896270751953,
                    "Value": false
                },
                "MouthOpen": {
                    "Confidence": 85.18905639648438,
                    "Value": false
                },
                "Quality": {
                    "Sharpness": 38.89601135253906,
                    "Brightness": 76.13925170898438
                },
                "Mustache": {
                    "Confidence": 99.69637298583984,
                    "Value": false
                },
                "Beard": {
                    "Confidence": 94.30412292480469,
                    "Value": false
                }
            }
        },
        {
            "Timestamp": 22333,
            "Face": {
                "Confidence": 60.7020378112793,
                "Eyeglasses": {
                    "Confidence": 99.99614715576172,
                    "Value": false
                },
                "Sunglasses": {
                    "Confidence": 99.9905014038086,
                    "Value": false
                },
                "Gender": {
                    "Confidence": 95.19331359863281,
                    "Value": "Female"
                },
                "Landmarks": [
                    {
                        "Y": 0.37918081879615784,
                        "X": 0.5091633796691895,
                        "Type": "eyeLeft"
                    },
                    {
                        "Y": 0.46805882453918457,
                        "X": 0.6776334643363953,
                        "Type": "eyeRight"
                    },
                    {
                        "Y": 0.717512309551239,
                        "X": 0.46021267771720886,
                        "Type": "mouthLeft"
                    },
                    {
                        "Y": 0.7929283380508423,
                        "X": 0.6002826690673828,
                        "Type": "mouthRight"
                    },
                    {
                        "Y": 0.5993139743804932,
                        "X": 0.5317979454994202,
                        "Type": "nose"
                    },
                    {
                        "Y": 0.2757273018360138,
                        "X": 0.4652906060218811,
                        "Type": "leftEyeBrowLeft"
                    },
                    {
                        "Y": 0.30002889037132263,
                        "X": 0.5507023930549622,
                        "Type": "leftEyeBrowRight"
                    },
                    {
                        "Y": 0.26154688000679016,
                        "X": 0.509061872959137,
                        "Type": "leftEyeBrowUp"
                    },
                    {
                        "Y": 0.35155656933784485,
                        "X": 0.6500857472419739,
                        "Type": "rightEyeBrowLeft"
                    },
                    {
                        "Y": 0.42912793159484863,
                        "X": 0.7671130299568176,
                        "Type": "rightEyeBrowRight"
                    },
                    {
                        "Y": 0.36119142174720764,
                        "X": 0.7089036107063293,
                        "Type": "rightEyeBrowUp"
                    },
                    {
                        "Y": 0.36684930324554443,
                        "X": 0.48284146189689636,
                        "Type": "leftEyeLeft"
                    },
                    {
                        "Y": 0.40460503101348877,
                        "X": 0.5401666164398193,
                        "Type": "leftEyeRight"
                    },
                    {
                        "Y": 0.3672633469104767,
                        "X": 0.5093055963516235,
                        "Type": "leftEyeUp"
                    },
                    {
                        "Y": 0.3979994058609009,
                        "X": 0.5056328773498535,
                        "Type": "leftEyeDown"
                    },
                    {
                        "Y": 0.45773667097091675,
                        "X": 0.6402305364608765,
                        "Type": "rightEyeLeft"
                    },
                    {
                        "Y": 0.486996054649353,
                        "X": 0.7070448398590088,
                        "Type": "rightEyeRight"
                    },
                    {
                        "Y": 0.4563574194908142,
                        "X": 0.6756504774093628,
                        "Type": "rightEyeUp"
                    },
                    {
                        "Y": 0.4861622154712677,
                        "X": 0.6696227788925171,
                        "Type": "rightEyeDown"
                    },
                    {
                        "Y": 0.6217324137687683,
                        "X": 0.5085120797157288,
                        "Type": "noseLeft"
                    },
                    {
                        "Y": 0.6553357243537903,
                        "X": 0.5725914239883423,
                        "Type": "noseRight"
                    },
                    {
                        "Y": 0.7165778875350952,
                        "X": 0.5232126116752625,
                        "Type": "mouthUp"
                    },
                    {
                        "Y": 0.8157217502593994,
                        "X": 0.5086994171142578,
                        "Type": "mouthDown"
                    },
                    {
                        "Y": 0.37918081879615784,
                        "X": 0.5091633796691895,
                        "Type": "leftPupil"
                    },
                    {
                        "Y": 0.46805882453918457,
                        "X": 0.6776334643363953,
                        "Type": "rightPupil"
                    },
                    {
                        "Y": 0.3413695693016052,
                        "X": 0.4522404670715332,
                        "Type": "upperJawlineLeft"
                    },
                    {
                        "Y": 0.711436927318573,
                        "X": 0.4165409803390503,
                        "Type": "midJawlineLeft"
                    },
                    {
                        "Y": 0.9849167466163635,
                        "X": 0.4913689196109772,
                        "Type": "chinBottom"
                    },
                    {
                        "Y": 0.8715011477470398,
                        "X": 0.7174521684646606,
                        "Type": "midJawlineRight"
                    },
                    {
                        "Y": 0.5400934219360352,
                        "X": 0.8270268440246582,
                        "Type": "upperJawlineRight"
                    }
                ],
                "Pose": {
                    "Yaw": -15.004944801330566,
                    "Roll": 16.61305046081543,
                    "Pitch": -2.600437879562378
                },
                "Emotions": [
                    {
                        "Confidence": 18.946361541748047,
                        "Type": "CALM"
                    },
                    {
                        "Confidence": 6.798335075378418,
                        "Type": "SURPRISED"
                    },
                    {
                        "Confidence": 0.16614918410778046,
                        "Type": "HAPPY"
                    },
                    {
                        "Confidence": 60.21868133544922,
                        "Type": "DISGUSTED"
                    },
                    {
                        "Confidence": 0.0,
                        "Type": "CONFUSED"
                    },
                    {
                        "Confidence": 0.3655899167060852,
                        "Type": "SAD"
                    },
                    {
                        "Confidence": 0.6002785563468933,
                        "Type": "ANGRY"
                    }
                ],
                "AgeRange": {
                    "High": 43,
                    "Low": 26
                },
                "EyesOpen": {
                    "Confidence": 60.98509979248047,
                    "Value": false
                },
                "BoundingBox": {
                    "Width": 0.3920914828777313,
                    "Top": 0.15166014432907104,
                    "Left": 0.34920749068260193,
                    "Height": 0.8519890308380127
                },
                "Smile": {
                    "Confidence": 74.80099487304688,
                    "Value": false
                },
                "MouthOpen": {
                    "Confidence": 86.0054931640625,
                    "Value": false
                },
                "Quality": {
                    "Sharpness": 92.22801208496094,
                    "Brightness": 21.278827667236328
                },
                "Mustache": {
                    "Confidence": 99.82475280761719,
                    "Value": false
                },
                "Beard": {
                    "Confidence": 97.51274871826172,
                    "Value": false
                }
            }
        }
    ],
    "JobStatus": "SUCCEEDED",
    "VideoMetadata": {
        "Format": "QuickTime / MOV",
        "FrameRate": 15.0,
        "Codec": "h264",
        "DurationMillis": 43000,
        "FrameHeight": 1080,
        "FrameWidth": 1920
    }
}
');


insert into vloguser.videostatus (
  s3location,
  video_stored_date,
  job_status_recorded_date,
  userid,
  face_detect_submit_response,
  face_detect_result) values
('s3://ring-video.jscarpaci.com/2018-12-02-video-1.mp4',
 '2018-12-02 19:23:00-05',
 '2018-12-12 15:12:00-05',
 1,
'{
    "JobId": "b5cedc1ebf410550887434762228d0f0d7feb74328ddefd009b5e79dc52b2bfd"
}',
'{
    "comment-command-line-that-submitted-rekog-request" : "aws rekognition start-face-detection --video \"S3Object={Bucket=ring-video.jscarpaci.com,Name=2018-12-02-video-1.mp4}\" --notification-channel SNSTopicArn=arn:aws:sns:us-east-1:250490682808:video-processing-results,RoleArn=arn:aws:iam::250490682808:role/rekog-service-role --face-attributes ALL --job-tag videoProcessingJob01 --profile jscarpaci",
    "comment-command-line-that-generated-this" : "aws rekognition get-face-detection --job-id b5cedc1ebf410550887434762228d0f0d7feb74328ddefd009b5e79dc52b2bfd --profile jscarpaci",
    "Faces": [
        {
            "Timestamp": 4599,
            "Face": {
                "Confidence": 97.84402465820312,
                "Eyeglasses": {
                    "Confidence": 99.99998474121094,
                    "Value": false
                },
                "Sunglasses": {
                    "Confidence": 100.0,
                    "Value": false
                },
                "Gender": {
                    "Confidence": 50.03255081176758,
                    "Value": "Female"
                },
                "Landmarks": [
                    {
                        "Y": 0.1776207983493805,
                        "X": 0.422586590051651,
                        "Type": "eyeLeft"
                    },
                    {
                        "Y": 0.16749507188796997,
                        "X": 0.4008803367614746,
                        "Type": "eyeRight"
                    },
                    {
                        "Y": 0.09089954197406769,
                        "X": 0.42793625593185425,
                        "Type": "mouthLeft"
                    },
                    {
                        "Y": 0.08138079941272736,
                        "X": 0.41118961572647095,
                        "Type": "mouthRight"
                    },
                    {
                        "Y": 0.14061285555362701,
                        "X": 0.4391448199748993,
                        "Type": "nose"
                    },
                    {
                        "Y": 0.19150391221046448,
                        "X": 0.4237777292728424,
                        "Type": "leftEyeBrowLeft"
                    },
                    {
                        "Y": 0.20413348078727722,
                        "X": 0.4255956709384918,
                        "Type": "leftEyeBrowRight"
                    },
                    {
                        "Y": 0.20464546978473663,
                        "X": 0.4277956187725067,
                        "Type": "leftEyeBrowUp"
                    },
                    {
                        "Y": 0.19917833805084229,
                        "X": 0.41203027963638306,
                        "Type": "rightEyeBrowLeft"
                    },
                    {
                        "Y": 0.17708323895931244,
                        "X": 0.38181906938552856,
                        "Type": "rightEyeBrowRight"
                    },
                    {
                        "Y": 0.19792477786540985,
                        "X": 0.4001907408237457,
                        "Type": "rightEyeBrowUp"
                    },
                    {
                        "Y": 0.17476849257946014,
                        "X": 0.424186110496521,
                        "Type": "leftEyeLeft"
                    },
                    {
                        "Y": 0.17121413350105286,
                        "X": 0.4186666011810303,
                        "Type": "leftEyeRight"
                    },
                    {
                        "Y": 0.17918117344379425,
                        "X": 0.42428478598594666,
                        "Type": "leftEyeUp"
                    },
                    {
                        "Y": 0.17148052155971527,
                        "X": 0.42404666543006897,
                        "Type": "leftEyeDown"
                    },
                    {
                        "Y": 0.16523772478103638,
                        "X": 0.4045431315898895,
                        "Type": "rightEyeLeft"
                    },
                    {
                        "Y": 0.1605231910943985,
                        "X": 0.3922375440597534,
                        "Type": "rightEyeRight"
                    },
                    {
                        "Y": 0.16870629787445068,
                        "X": 0.4005435109138489,
                        "Type": "rightEyeUp"
                    },
                    {
                        "Y": 0.16087467968463898,
                        "X": 0.40067458152770996,
                        "Type": "rightEyeDown"
                    },
                    {
                        "Y": 0.12415386736392975,
                        "X": 0.43084654211997986,
                        "Type": "noseLeft"
                    },
                    {
                        "Y": 0.12159813195466995,
                        "X": 0.42038631439208984,
                        "Type": "noseRight"
                    },
                    {
                        "Y": 0.10663586109876633,
                        "X": 0.4297289252281189,
                        "Type": "mouthUp"
                    },
                    {
                        "Y": 0.08103081583976746,
                        "X": 0.42831552028656006,
                        "Type": "mouthDown"
                    },
                    {
                        "Y": 0.1776207983493805,
                        "X": 0.422586590051651,
                        "Type": "leftPupil"
                    },
                    {
                        "Y": 0.16749507188796997,
                        "X": 0.4008803367614746,
                        "Type": "rightPupil"
                    },
                    {
                        "Y": 0.15273667871952057,
                        "X": 0.394852876663208,
                        "Type": "upperJawlineLeft"
                    },
                    {
                        "Y": 0.07379238307476044,
                        "X": 0.40425997972488403,
                        "Type": "midJawlineLeft"
                    },
                    {
                        "Y": 0.03749343007802963,
                        "X": 0.4205149710178375,
                        "Type": "chinBottom"
                    },
                    {
                        "Y": 0.054917801171541214,
                        "X": 0.3610096871852875,
                        "Type": "midJawlineRight"
                    },
                    {
                        "Y": 0.12955427169799805,
                        "X": 0.34120693802833557,
                        "Type": "upperJawlineRight"
                    }
                ],
                "Pose": {
                    "Yaw": -55.80038070678711,
                    "Roll": -170.74571228027344,
                    "Pitch": 1.3835140466690063
                },
                "Emotions": [
                    {
                        "Confidence": 9.906991958618164,
                        "Type": "HAPPY"
                    },
                    {
                        "Confidence": 0.5955055356025696,
                        "Type": "CALM"
                    },
                    {
                        "Confidence": 0.4543682932853699,
                        "Type": "SURPRISED"
                    },
                    {
                        "Confidence": 81.16143798828125,
                        "Type": "SAD"
                    },
                    {
                        "Confidence": 0.0,
                        "Type": "CONFUSED"
                    },
                    {
                        "Confidence": 3.824191093444824,
                        "Type": "ANGRY"
                    },
                    {
                        "Confidence": 1.3398905992507935,
                        "Type": "DISGUSTED"
                    }
                ],
                "AgeRange": {
                    "High": 13,
                    "Low": 6
                },
                "EyesOpen": {
                    "Confidence": 99.87884521484375,
                    "Value": false
                },
                "BoundingBox": {
                    "Width": 0.1355411857366562,
                    "Top": -0.02736765518784523,
                    "Left": 0.3309735655784607,
                    "Height": 0.26660171151161194
                },
                "Smile": {
                    "Confidence": 55.428016662597656,
                    "Value": false
                },
                "MouthOpen": {
                    "Confidence": 55.246185302734375,
                    "Value": false
                },
                "Quality": {
                    "Sharpness": 32.20803451538086,
                    "Brightness": 73.08705139160156
                },
                "Mustache": {
                    "Confidence": 99.89688873291016,
                    "Value": false
                },
                "Beard": {
                    "Confidence": 95.76404571533203,
                    "Value": false
                }
            }
        },
        {
            "Timestamp": 4799,
            "Face": {
                "Confidence": 99.9999771118164,
                "Eyeglasses": {
                    "Confidence": 99.99726104736328,
                    "Value": false
                },
                "Sunglasses": {
                    "Confidence": 99.99986267089844,
                    "Value": false
                },
                "Gender": {
                    "Confidence": 63.22980499267578,
                    "Value": "Male"
                },
                "Landmarks": [
                    {
                        "Y": 0.0845002830028534,
                        "X": 0.46130499243736267,
                        "Type": "eyeLeft"
                    },
                    {
                        "Y": 0.12106677889823914,
                        "X": 0.4853157103061676,
                        "Type": "eyeRight"
                    },
                    {
                        "Y": 0.17005006968975067,
                        "X": 0.44359859824180603,
                        "Type": "mouthLeft"
                    },
                    {
                        "Y": 0.19961224496364594,
                        "X": 0.4623497724533081,
                        "Type": "mouthRight"
                    },
                    {
                        "Y": 0.1493217796087265,
                        "X": 0.48088645935058594,
                        "Type": "nose"
                    },
                    {
                        "Y": 0.05354614928364754,
                        "X": 0.44851842522621155,
                        "Type": "leftEyeBrowLeft"
                    },
                    {
                        "Y": 0.07026811689138412,
                        "X": 0.47929850220680237,
                        "Type": "leftEyeBrowRight"
                    },
                    {
                        "Y": 0.057092346251010895,
                        "X": 0.46804264187812805,
                        "Type": "leftEyeBrowUp"
                    },
                    {
                        "Y": 0.09256315231323242,
                        "X": 0.49379271268844604,
                        "Type": "rightEyeBrowLeft"
                    },
                    {
                        "Y": 0.11690568923950195,
                        "X": 0.4935864806175232,
                        "Type": "rightEyeBrowRight"
                    },
                    {
                        "Y": 0.09890306740999222,
                        "X": 0.4987390637397766,
                        "Type": "rightEyeBrowUp"
                    },
                    {
                        "Y": 0.07898445427417755,
                        "X": 0.4527830481529236,
                        "Type": "leftEyeLeft"
                    },
                    {
                        "Y": 0.09390459954738617,
                        "X": 0.46486541628837585,
                        "Type": "leftEyeRight"
                    },
                    {
                        "Y": 0.08260698616504669,
                        "X": 0.46180856227874756,
                        "Type": "leftEyeUp"
                    },
                    {
                        "Y": 0.0897689163684845,
                        "X": 0.4595048427581787,
                        "Type": "leftEyeDown"
                    },
                    {
                        "Y": 0.11568951606750488,
                        "X": 0.48020249605178833,
                        "Type": "rightEyeLeft"
                    },
                    {
                        "Y": 0.1270626038312912,
                        "X": 0.48756760358810425,
                        "Type": "rightEyeRight"
                    },
                    {
                        "Y": 0.11834753304719925,
                        "X": 0.487597793340683,
                        "Type": "rightEyeUp"
                    },
                    {
                        "Y": 0.12478309869766235,
                        "X": 0.4849642515182495,
                        "Type": "rightEyeDown"
                    },
                    {
                        "Y": 0.1500532180070877,
                        "X": 0.46339690685272217,
                        "Type": "noseLeft"
                    },
                    {
                        "Y": 0.16106313467025757,
                        "X": 0.4711083173751831,
                        "Type": "noseRight"
                    },
                    {
                        "Y": 0.1727990210056305,
                        "X": 0.46375954151153564,
                        "Type": "mouthUp"
                    },
                    {
                        "Y": 0.1944318264722824,
                        "X": 0.45461297035217285,
                        "Type": "mouthDown"
                    },
                    {
                        "Y": 0.0845002830028534,
                        "X": 0.46130499243736267,
                        "Type": "leftPupil"
                    },
                    {
                        "Y": 0.12106677889823914,
                        "X": 0.4853157103061676,
                        "Type": "rightPupil"
                    },
                    {
                        "Y": 0.057100698351860046,
                        "X": 0.40793946385383606,
                        "Type": "upperJawlineLeft"
                    },
                    {
                        "Y": 0.14534570276737213,
                        "X": 0.39671075344085693,
                        "Type": "midJawlineLeft"
                    },
                    {
                        "Y": 0.22872915863990784,
                        "X": 0.43467050790786743,
                        "Type": "chinBottom"
                    },
                    {
                        "Y": 0.21035657823085785,
                        "X": 0.44430437684059143,
                        "Type": "midJawlineRight"
                    },
                    {
                        "Y": 0.1382691115140915,
                        "X": 0.46691712737083435,
                        "Type": "upperJawlineRight"
                    }
                ],
                "Pose": {
                    "Yaw": 42.129390716552734,
                    "Roll": 41.66864776611328,
                    "Pitch": 20.540363311767578
                },
                "Emotions": [
                    {
                        "Confidence": 0.0,
                        "Type": "CONFUSED"
                    },
                    {
                        "Confidence": 0.03389839828014374,
                        "Type": "HAPPY"
                    },
                    {
                        "Confidence": 0.8156020045280457,
                        "Type": "SURPRISED"
                    },
                    {
                        "Confidence": 0.22849714756011963,
                        "Type": "SAD"
                    },
                    {
                        "Confidence": 5.69551944732666,
                        "Type": "ANGRY"
                    },
                    {
                        "Confidence": 69.97489166259766,
                        "Type": "DISGUSTED"
                    },
                    {
                        "Confidence": 22.55771827697754,
                        "Type": "CALM"
                    }
                ],
                "AgeRange": {
                    "High": 45,
                    "Low": 29
                },
                "EyesOpen": {
                    "Confidence": 98.93328857421875,
                    "Value": false
                },
                "BoundingBox": {
                    "Width": 0.1042066141963005,
                    "Top": 0.012991358526051044,
                    "Left": 0.4012400209903717,
                    "Height": 0.2207736223936081
                },
                "Smile": {
                    "Confidence": 96.35631561279297,
                    "Value": false
                },
                "MouthOpen": {
                    "Confidence": 84.80248260498047,
                    "Value": false
                },
                "Quality": {
                    "Sharpness": 38.89601135253906,
                    "Brightness": 73.70428466796875
                },
                "Mustache": {
                    "Confidence": 99.827880859375,
                    "Value": false
                },
                "Beard": {
                    "Confidence": 95.46564483642578,
                    "Value": false
                }
            }
        },
        {
            "Timestamp": 5000,
            "Face": {
                "Confidence": 99.90603637695312,
                "Eyeglasses": {
                    "Confidence": 99.979248046875,
                    "Value": false
                },
                "Sunglasses": {
                    "Confidence": 99.99738311767578,
                    "Value": false
                },
                "Gender": {
                    "Confidence": 81.12164306640625,
                    "Value": "Male"
                },
                "Landmarks": [
                    {
                        "Y": 0.11271058022975922,
                        "X": 0.5014330744743347,
                        "Type": "eyeLeft"
                    },
                    {
                        "Y": 0.1399591565132141,
                        "X": 0.5178895592689514,
                        "Type": "eyeRight"
                    },
                    {
                        "Y": 0.18186822533607483,
                        "X": 0.48577800393104553,
                        "Type": "mouthLeft"
                    },
                    {
                        "Y": 0.20328861474990845,
                        "X": 0.4982980489730835,
                        "Type": "mouthRight"
                    },
                    {
                        "Y": 0.168096125125885,
                        "X": 0.5215568542480469,
                        "Type": "nose"
                    },
                    {
                        "Y": 0.08688557147979736,
                        "X": 0.4900648593902588,
                        "Type": "leftEyeBrowLeft"
                    },
                    {
                        "Y": 0.10249976068735123,
                        "X": 0.5181398391723633,
                        "Type": "leftEyeBrowRight"
                    },
                    {
                        "Y": 0.09153745323419571,
                        "X": 0.5083480477333069,
                        "Type": "leftEyeBrowUp"
                    },
                    {
                        "Y": 0.11955981701612473,
                        "X": 0.5280734300613403,
                        "Type": "rightEyeBrowLeft"
                    },
                    {
                        "Y": 0.13458824157714844,
                        "X": 0.5214567184448242,
                        "Type": "rightEyeBrowRight"
                    },
                    {
                        "Y": 0.12331537902355194,
                        "X": 0.5300381779670715,
                        "Type": "rightEyeBrowUp"
                    },
                    {
                        "Y": 0.1076914370059967,
                        "X": 0.49387818574905396,
                        "Type": "leftEyeLeft"
                    },
                    {
                        "Y": 0.11965878307819366,
                        "X": 0.5035508275032043,
                        "Type": "leftEyeRight"
                    },
                    {
                        "Y": 0.11122417449951172,
                        "X": 0.501986563205719,
                        "Type": "leftEyeUp"
                    },
                    {
                        "Y": 0.11677491664886475,
                        "X": 0.4998219609260559,
                        "Type": "leftEyeDown"
                    },
                    {
                        "Y": 0.13622590899467468,
                        "X": 0.5142925977706909,
                        "Type": "rightEyeLeft"
                    },
                    {
                        "Y": 0.1440443992614746,
                        "X": 0.5184059739112854,
                        "Type": "rightEyeRight"
                    },
                    {
                        "Y": 0.13828632235527039,
                        "X": 0.520157516002655,
                        "Type": "rightEyeUp"
                    },
                    {
                        "Y": 0.14320088922977448,
                        "X": 0.5177865624427795,
                        "Type": "rightEyeDown"
                    },
                    {
                        "Y": 0.16665586829185486,
                        "X": 0.5041642189025879,
                        "Type": "noseLeft"
                    },
                    {
                        "Y": 0.17401310801506042,
                        "X": 0.5091009140014648,
                        "Type": "noseRight"
                    },
                    {
                        "Y": 0.1841094046831131,
                        "X": 0.5043146014213562,
                        "Type": "mouthUp"
                    },
                    {
                        "Y": 0.2003936767578125,
                        "X": 0.4956788420677185,
                        "Type": "mouthDown"
                    },
                    {
                        "Y": 0.11271058022975922,
                        "X": 0.5014330744743347,
                        "Type": "leftPupil"
                    },
                    {
                        "Y": 0.1399591565132141,
                        "X": 0.5178895592689514,
                        "Type": "rightPupil"
                    },
                    {
                        "Y": 0.08271480351686478,
                        "X": 0.4477633833885193,
                        "Type": "upperJawlineLeft"
                    },
                    {
                        "Y": 0.15344862639904022,
                        "X": 0.4392834007740021,
                        "Type": "midJawlineLeft"
                    },
                    {
                        "Y": 0.22492218017578125,
                        "X": 0.47624310851097107,
                        "Type": "chinBottom"
                    },
                    {
                        "Y": 0.2028525024652481,
                        "X": 0.4731176495552063,
                        "Type": "midJawlineRight"
                    },
                    {
                        "Y": 0.1444091498851776,
                        "X": 0.4895907938480377,
                        "Type": "upperJawlineRight"
                    }
                ],
                "Pose": {
                    "Yaw": 50.61492919921875,
                    "Roll": 48.44514083862305,
                    "Pitch": 27.622982025146484
                },
                "Emotions": [
                    {
                        "Confidence": 8.441681861877441,
                        "Type": "SURPRISED"
                    },
                    {
                        "Confidence": 56.977622985839844,
                        "Type": "CALM"
                    },
                    {
                        "Confidence": 0.0,
                        "Type": "CONFUSED"
                    },
                    {
                        "Confidence": 0.05156566575169563,
                        "Type": "HAPPY"
                    },
                    {
                        "Confidence": 23.028913497924805,
                        "Type": "DISGUSTED"
                    },
                    {
                        "Confidence": 0.39865389466285706,
                        "Type": "SAD"
                    },
                    {
                        "Confidence": 10.028800010681152,
                        "Type": "ANGRY"
                    }
                ],
                "AgeRange": {
                    "High": 57,
                    "Low": 38
                },
                "EyesOpen": {
                    "Confidence": 98.94985961914062,
                    "Value": false
                },
                "BoundingBox": {
                    "Width": 0.10577304661273956,
                    "Top": 0.03099595382809639,
                    "Left": 0.44218599796295166,
                    "Height": 0.21945436298847198
                },
                "Smile": {
                    "Confidence": 98.63525390625,
                    "Value": false
                },
                "MouthOpen": {
                    "Confidence": 88.05256652832031,
                    "Value": false
                },
                "Quality": {
                    "Sharpness": 38.89601135253906,
                    "Brightness": 72.79242706298828
                },
                "Mustache": {
                    "Confidence": 99.80513763427734,
                    "Value": false
                },
                "Beard": {
                    "Confidence": 93.86184692382812,
                    "Value": false
                }
            }
        },
        {
            "Timestamp": 5200,
            "Face": {
                "Confidence": 99.99921417236328,
                "Eyeglasses": {
                    "Confidence": 99.98491668701172,
                    "Value": false
                },
                "Sunglasses": {
                    "Confidence": 99.99300384521484,
                    "Value": false
                },
                "Gender": {
                    "Confidence": 66.01898193359375,
                    "Value": "Female"
                },
                "Landmarks": [
                    {
                        "Y": 0.133408322930336,
                        "X": 0.5574378967285156,
                        "Type": "eyeLeft"
                    },
                    {
                        "Y": 0.16099879145622253,
                        "X": 0.5656313896179199,
                        "Type": "eyeRight"
                    },
                    {
                        "Y": 0.1944175809621811,
                        "X": 0.5366606712341309,
                        "Type": "mouthLeft"
                    },
                    {
                        "Y": 0.2158142775297165,
                        "X": 0.5422120094299316,
                        "Type": "mouthRight"
                    },
                    {
                        "Y": 0.1891072541475296,
                        "X": 0.5720837712287903,
                        "Type": "nose"
                    },
                    {
                        "Y": 0.10808740556240082,
                        "X": 0.5490429401397705,
                        "Type": "leftEyeBrowLeft"
                    },
                    {
                        "Y": 0.12773527204990387,
                        "X": 0.573951780796051,
                        "Type": "leftEyeBrowRight"
                    },
                    {
                        "Y": 0.11632025241851807,
                        "X": 0.5659860372543335,
                        "Type": "leftEyeBrowUp"
                    },
                    {
                        "Y": 0.14521458745002747,
                        "X": 0.579060435295105,
                        "Type": "rightEyeBrowLeft"
                    },
                    {
                        "Y": 0.15650847554206848,
                        "X": 0.5664769411087036,
                        "Type": "rightEyeBrowRight"
                    },
                    {
                        "Y": 0.1487286239862442,
                        "X": 0.5786028504371643,
                        "Type": "rightEyeBrowUp"
                    },
                    {
                        "Y": 0.127744659781456,
                        "X": 0.550517737865448,
                        "Type": "leftEyeLeft"
                    },
                    {
                        "Y": 0.1406896859407425,
                        "X": 0.5573919415473938,
                        "Type": "leftEyeRight"
                    },
                    {
                        "Y": 0.13271595537662506,
                        "X": 0.5576755404472351,
                        "Type": "leftEyeUp"
                    },
                    {
                        "Y": 0.1372915655374527,
                        "X": 0.5550481677055359,
                        "Type": "leftEyeDown"
                    },
                    {
                        "Y": 0.15781094133853912,
                        "X": 0.5633962154388428,
                        "Type": "rightEyeLeft"
                    },
                    {
                        "Y": 0.1654786318540573,
                        "X": 0.5645688772201538,
                        "Type": "rightEyeRight"
                    },
                    {
                        "Y": 0.16081023216247559,
                        "X": 0.5680756568908691,
                        "Type": "rightEyeUp"
                    },
                    {
                        "Y": 0.16472966969013214,
                        "X": 0.5653699636459351,
                        "Type": "rightEyeDown"
                    },
                    {
                        "Y": 0.18401654064655304,
                        "X": 0.5551202893257141,
                        "Type": "noseLeft"
                    },
                    {
                        "Y": 0.19112427532672882,
                        "X": 0.5571016669273376,
                        "Type": "noseRight"
                    },
                    {
                        "Y": 0.19927304983139038,
                        "X": 0.5530556440353394,
                        "Type": "mouthUp"
                    },
                    {
                        "Y": 0.21194200217723846,
                        "X": 0.543157160282135,
                        "Type": "mouthDown"
                    },
                    {
                        "Y": 0.133408322930336,
                        "X": 0.5574378967285156,
                        "Type": "leftPupil"
                    },
                    {
                        "Y": 0.16099879145622253,
                        "X": 0.5656313896179199,
                        "Type": "rightPupil"
                    },
                    {
                        "Y": 0.09438048303127289,
                        "X": 0.5059067606925964,
                        "Type": "upperJawlineLeft"
                    },
                    {
                        "Y": 0.15566270053386688,
                        "X": 0.49232345819473267,
                        "Type": "midJawlineLeft"
                    },
                    {
                        "Y": 0.22862845659255981,
                        "X": 0.5216081738471985,
                        "Type": "chinBottom"
                    },
                    {
                        "Y": 0.20696932077407837,
                        "X": 0.5120093822479248,
                        "Type": "midJawlineRight"
                    },
                    {
                        "Y": 0.15841688215732574,
                        "X": 0.5300807356834412,
                        "Type": "upperJawlineRight"
                    }
                ],
                "Pose": {
                    "Yaw": 57.59777069091797,
                    "Roll": 57.71172332763672,
                    "Pitch": 20.39309310913086
                },
                "Emotions": [
                    {
                        "Confidence": 36.68757629394531,
                        "Type": "CALM"
                    },
                    {
                        "Confidence": 14.047259330749512,
                        "Type": "DISGUSTED"
                    },
                    {
                        "Confidence": 0.5951733589172363,
                        "Type": "HAPPY"
                    },
                    {
                        "Confidence": 2.0621790885925293,
                        "Type": "SAD"
                    },
                    {
                        "Confidence": 26.895362854003906,
                        "Type": "ANGRY"
                    },
                    {
                        "Confidence": 0.0,
                        "Type": "CONFUSED"
                    },
                    {
                        "Confidence": 17.047948837280273,
                        "Type": "SURPRISED"
                    }
                ],
                "AgeRange": {
                    "High": 43,
                    "Low": 26
                },
                "EyesOpen": {
                    "Confidence": 96.33313751220703,
                    "Value": false
                },
                "BoundingBox": {
                    "Width": 0.08535773307085037,
                    "Top": 0.04687603935599327,
                    "Left": 0.4952324628829956,
                    "Height": 0.21656759083271027
                },
                "Smile": {
                    "Confidence": 98.42896270751953,
                    "Value": false
                },
                "MouthOpen": {
                    "Confidence": 85.18905639648438,
                    "Value": false
                },
                "Quality": {
                    "Sharpness": 38.89601135253906,
                    "Brightness": 76.13925170898438
                },
                "Mustache": {
                    "Confidence": 99.69637298583984,
                    "Value": false
                },
                "Beard": {
                    "Confidence": 94.30412292480469,
                    "Value": false
                }
            }
        },
        {
            "Timestamp": 22333,
            "Face": {
                "Confidence": 60.7020378112793,
                "Eyeglasses": {
                    "Confidence": 99.99614715576172,
                    "Value": false
                },
                "Sunglasses": {
                    "Confidence": 99.9905014038086,
                    "Value": false
                },
                "Gender": {
                    "Confidence": 95.19331359863281,
                    "Value": "Female"
                },
                "Landmarks": [
                    {
                        "Y": 0.37918081879615784,
                        "X": 0.5091633796691895,
                        "Type": "eyeLeft"
                    },
                    {
                        "Y": 0.46805882453918457,
                        "X": 0.6776334643363953,
                        "Type": "eyeRight"
                    },
                    {
                        "Y": 0.717512309551239,
                        "X": 0.46021267771720886,
                        "Type": "mouthLeft"
                    },
                    {
                        "Y": 0.7929283380508423,
                        "X": 0.6002826690673828,
                        "Type": "mouthRight"
                    },
                    {
                        "Y": 0.5993139743804932,
                        "X": 0.5317979454994202,
                        "Type": "nose"
                    },
                    {
                        "Y": 0.2757273018360138,
                        "X": 0.4652906060218811,
                        "Type": "leftEyeBrowLeft"
                    },
                    {
                        "Y": 0.30002889037132263,
                        "X": 0.5507023930549622,
                        "Type": "leftEyeBrowRight"
                    },
                    {
                        "Y": 0.26154688000679016,
                        "X": 0.509061872959137,
                        "Type": "leftEyeBrowUp"
                    },
                    {
                        "Y": 0.35155656933784485,
                        "X": 0.6500857472419739,
                        "Type": "rightEyeBrowLeft"
                    },
                    {
                        "Y": 0.42912793159484863,
                        "X": 0.7671130299568176,
                        "Type": "rightEyeBrowRight"
                    },
                    {
                        "Y": 0.36119142174720764,
                        "X": 0.7089036107063293,
                        "Type": "rightEyeBrowUp"
                    },
                    {
                        "Y": 0.36684930324554443,
                        "X": 0.48284146189689636,
                        "Type": "leftEyeLeft"
                    },
                    {
                        "Y": 0.40460503101348877,
                        "X": 0.5401666164398193,
                        "Type": "leftEyeRight"
                    },
                    {
                        "Y": 0.3672633469104767,
                        "X": 0.5093055963516235,
                        "Type": "leftEyeUp"
                    },
                    {
                        "Y": 0.3979994058609009,
                        "X": 0.5056328773498535,
                        "Type": "leftEyeDown"
                    },
                    {
                        "Y": 0.45773667097091675,
                        "X": 0.6402305364608765,
                        "Type": "rightEyeLeft"
                    },
                    {
                        "Y": 0.486996054649353,
                        "X": 0.7070448398590088,
                        "Type": "rightEyeRight"
                    },
                    {
                        "Y": 0.4563574194908142,
                        "X": 0.6756504774093628,
                        "Type": "rightEyeUp"
                    },
                    {
                        "Y": 0.4861622154712677,
                        "X": 0.6696227788925171,
                        "Type": "rightEyeDown"
                    },
                    {
                        "Y": 0.6217324137687683,
                        "X": 0.5085120797157288,
                        "Type": "noseLeft"
                    },
                    {
                        "Y": 0.6553357243537903,
                        "X": 0.5725914239883423,
                        "Type": "noseRight"
                    },
                    {
                        "Y": 0.7165778875350952,
                        "X": 0.5232126116752625,
                        "Type": "mouthUp"
                    },
                    {
                        "Y": 0.8157217502593994,
                        "X": 0.5086994171142578,
                        "Type": "mouthDown"
                    },
                    {
                        "Y": 0.37918081879615784,
                        "X": 0.5091633796691895,
                        "Type": "leftPupil"
                    },
                    {
                        "Y": 0.46805882453918457,
                        "X": 0.6776334643363953,
                        "Type": "rightPupil"
                    },
                    {
                        "Y": 0.3413695693016052,
                        "X": 0.4522404670715332,
                        "Type": "upperJawlineLeft"
                    },
                    {
                        "Y": 0.711436927318573,
                        "X": 0.4165409803390503,
                        "Type": "midJawlineLeft"
                    },
                    {
                        "Y": 0.9849167466163635,
                        "X": 0.4913689196109772,
                        "Type": "chinBottom"
                    },
                    {
                        "Y": 0.8715011477470398,
                        "X": 0.7174521684646606,
                        "Type": "midJawlineRight"
                    },
                    {
                        "Y": 0.5400934219360352,
                        "X": 0.8270268440246582,
                        "Type": "upperJawlineRight"
                    }
                ],
                "Pose": {
                    "Yaw": -15.004944801330566,
                    "Roll": 16.61305046081543,
                    "Pitch": -2.600437879562378
                },
                "Emotions": [
                    {
                        "Confidence": 18.946361541748047,
                        "Type": "CALM"
                    },
                    {
                        "Confidence": 6.798335075378418,
                        "Type": "SURPRISED"
                    },
                    {
                        "Confidence": 0.16614918410778046,
                        "Type": "HAPPY"
                    },
                    {
                        "Confidence": 60.21868133544922,
                        "Type": "DISGUSTED"
                    },
                    {
                        "Confidence": 0.0,
                        "Type": "CONFUSED"
                    },
                    {
                        "Confidence": 0.3655899167060852,
                        "Type": "SAD"
                    },
                    {
                        "Confidence": 0.6002785563468933,
                        "Type": "ANGRY"
                    }
                ],
                "AgeRange": {
                    "High": 43,
                    "Low": 26
                },
                "EyesOpen": {
                    "Confidence": 60.98509979248047,
                    "Value": false
                },
                "BoundingBox": {
                    "Width": 0.3920914828777313,
                    "Top": 0.15166014432907104,
                    "Left": 0.34920749068260193,
                    "Height": 0.8519890308380127
                },
                "Smile": {
                    "Confidence": 74.80099487304688,
                    "Value": false
                },
                "MouthOpen": {
                    "Confidence": 86.0054931640625,
                    "Value": false
                },
                "Quality": {
                    "Sharpness": 92.22801208496094,
                    "Brightness": 21.278827667236328
                },
                "Mustache": {
                    "Confidence": 99.82475280761719,
                    "Value": false
                },
                "Beard": {
                    "Confidence": 97.51274871826172,
                    "Value": false
                }
            }
        }
    ],
    "JobStatus": "IN_PROGRESS",
    "VideoMetadata": {
        "Format": "QuickTime / MOV",
        "FrameRate": 15.0,
        "Codec": "h264",
        "DurationMillis": 43000,
        "FrameHeight": 1080,
        "FrameWidth": 1920
    }
}
');


insert into vloguser.videostatus (
  s3location,
  video_stored_date,
  job_status_recorded_date,
  userid,
  face_detect_submit_response,
  face_detect_result) values
('s3://ring-video.jscarpaci.com/2018-12-02-video-1.mp4',
 '2018-12-02 19:23:00-05',
 '2018-12-12 15:12:00-05',
 1,
'{
    "JobId": "b5cedc1ebf410550887434762228d0f0d7feb74328ddefd009b5e79dc52b2bfd"
}',
'{
    "comment-command-line-that-submitted-rekog-request" : "aws rekognition start-face-detection --video \"S3Object={Bucket=ring-video.jscarpaci.com,Name=2018-12-02-video-1.mp4}\" --notification-channel SNSTopicArn=arn:aws:sns:us-east-1:250490682808:video-processing-results,RoleArn=arn:aws:iam::250490682808:role/rekog-service-role --face-attributes ALL --job-tag videoProcessingJob01 --profile jscarpaci",
    "comment-command-line-that-generated-this" : "aws rekognition get-face-detection --job-id b5cedc1ebf410550887434762228d0f0d7feb74328ddefd009b5e79dc52b2bfd --profile jscarpaci",
    "Faces": [
        {
            "Timestamp": 4599,
            "Face": {
                "Confidence": 97.84402465820312,
                "Eyeglasses": {
                    "Confidence": 99.99998474121094,
                    "Value": false
                },
                "Sunglasses": {
                    "Confidence": 100.0,
                    "Value": false
                },
                "Gender": {
                    "Confidence": 50.03255081176758,
                    "Value": "Female"
                },
                "Landmarks": [
                    {
                        "Y": 0.1776207983493805,
                        "X": 0.422586590051651,
                        "Type": "eyeLeft"
                    },
                    {
                        "Y": 0.16749507188796997,
                        "X": 0.4008803367614746,
                        "Type": "eyeRight"
                    },
                    {
                        "Y": 0.09089954197406769,
                        "X": 0.42793625593185425,
                        "Type": "mouthLeft"
                    },
                    {
                        "Y": 0.08138079941272736,
                        "X": 0.41118961572647095,
                        "Type": "mouthRight"
                    },
                    {
                        "Y": 0.14061285555362701,
                        "X": 0.4391448199748993,
                        "Type": "nose"
                    },
                    {
                        "Y": 0.19150391221046448,
                        "X": 0.4237777292728424,
                        "Type": "leftEyeBrowLeft"
                    },
                    {
                        "Y": 0.20413348078727722,
                        "X": 0.4255956709384918,
                        "Type": "leftEyeBrowRight"
                    },
                    {
                        "Y": 0.20464546978473663,
                        "X": 0.4277956187725067,
                        "Type": "leftEyeBrowUp"
                    },
                    {
                        "Y": 0.19917833805084229,
                        "X": 0.41203027963638306,
                        "Type": "rightEyeBrowLeft"
                    },
                    {
                        "Y": 0.17708323895931244,
                        "X": 0.38181906938552856,
                        "Type": "rightEyeBrowRight"
                    },
                    {
                        "Y": 0.19792477786540985,
                        "X": 0.4001907408237457,
                        "Type": "rightEyeBrowUp"
                    },
                    {
                        "Y": 0.17476849257946014,
                        "X": 0.424186110496521,
                        "Type": "leftEyeLeft"
                    },
                    {
                        "Y": 0.17121413350105286,
                        "X": 0.4186666011810303,
                        "Type": "leftEyeRight"
                    },
                    {
                        "Y": 0.17918117344379425,
                        "X": 0.42428478598594666,
                        "Type": "leftEyeUp"
                    },
                    {
                        "Y": 0.17148052155971527,
                        "X": 0.42404666543006897,
                        "Type": "leftEyeDown"
                    },
                    {
                        "Y": 0.16523772478103638,
                        "X": 0.4045431315898895,
                        "Type": "rightEyeLeft"
                    },
                    {
                        "Y": 0.1605231910943985,
                        "X": 0.3922375440597534,
                        "Type": "rightEyeRight"
                    },
                    {
                        "Y": 0.16870629787445068,
                        "X": 0.4005435109138489,
                        "Type": "rightEyeUp"
                    },
                    {
                        "Y": 0.16087467968463898,
                        "X": 0.40067458152770996,
                        "Type": "rightEyeDown"
                    },
                    {
                        "Y": 0.12415386736392975,
                        "X": 0.43084654211997986,
                        "Type": "noseLeft"
                    },
                    {
                        "Y": 0.12159813195466995,
                        "X": 0.42038631439208984,
                        "Type": "noseRight"
                    },
                    {
                        "Y": 0.10663586109876633,
                        "X": 0.4297289252281189,
                        "Type": "mouthUp"
                    },
                    {
                        "Y": 0.08103081583976746,
                        "X": 0.42831552028656006,
                        "Type": "mouthDown"
                    },
                    {
                        "Y": 0.1776207983493805,
                        "X": 0.422586590051651,
                        "Type": "leftPupil"
                    },
                    {
                        "Y": 0.16749507188796997,
                        "X": 0.4008803367614746,
                        "Type": "rightPupil"
                    },
                    {
                        "Y": 0.15273667871952057,
                        "X": 0.394852876663208,
                        "Type": "upperJawlineLeft"
                    },
                    {
                        "Y": 0.07379238307476044,
                        "X": 0.40425997972488403,
                        "Type": "midJawlineLeft"
                    },
                    {
                        "Y": 0.03749343007802963,
                        "X": 0.4205149710178375,
                        "Type": "chinBottom"
                    },
                    {
                        "Y": 0.054917801171541214,
                        "X": 0.3610096871852875,
                        "Type": "midJawlineRight"
                    },
                    {
                        "Y": 0.12955427169799805,
                        "X": 0.34120693802833557,
                        "Type": "upperJawlineRight"
                    }
                ],
                "Pose": {
                    "Yaw": -55.80038070678711,
                    "Roll": -170.74571228027344,
                    "Pitch": 1.3835140466690063
                },
                "Emotions": [
                    {
                        "Confidence": 9.906991958618164,
                        "Type": "HAPPY"
                    },
                    {
                        "Confidence": 0.5955055356025696,
                        "Type": "CALM"
                    },
                    {
                        "Confidence": 0.4543682932853699,
                        "Type": "SURPRISED"
                    },
                    {
                        "Confidence": 81.16143798828125,
                        "Type": "SAD"
                    },
                    {
                        "Confidence": 0.0,
                        "Type": "CONFUSED"
                    },
                    {
                        "Confidence": 3.824191093444824,
                        "Type": "ANGRY"
                    },
                    {
                        "Confidence": 1.3398905992507935,
                        "Type": "DISGUSTED"
                    }
                ],
                "AgeRange": {
                    "High": 13,
                    "Low": 6
                },
                "EyesOpen": {
                    "Confidence": 99.87884521484375,
                    "Value": false
                },
                "BoundingBox": {
                    "Width": 0.1355411857366562,
                    "Top": -0.02736765518784523,
                    "Left": 0.3309735655784607,
                    "Height": 0.26660171151161194
                },
                "Smile": {
                    "Confidence": 55.428016662597656,
                    "Value": false
                },
                "MouthOpen": {
                    "Confidence": 55.246185302734375,
                    "Value": false
                },
                "Quality": {
                    "Sharpness": 32.20803451538086,
                    "Brightness": 73.08705139160156
                },
                "Mustache": {
                    "Confidence": 99.89688873291016,
                    "Value": false
                },
                "Beard": {
                    "Confidence": 95.76404571533203,
                    "Value": false
                }
            }
        },
        {
            "Timestamp": 4799,
            "Face": {
                "Confidence": 99.9999771118164,
                "Eyeglasses": {
                    "Confidence": 99.99726104736328,
                    "Value": false
                },
                "Sunglasses": {
                    "Confidence": 99.99986267089844,
                    "Value": false
                },
                "Gender": {
                    "Confidence": 63.22980499267578,
                    "Value": "Male"
                },
                "Landmarks": [
                    {
                        "Y": 0.0845002830028534,
                        "X": 0.46130499243736267,
                        "Type": "eyeLeft"
                    },
                    {
                        "Y": 0.12106677889823914,
                        "X": 0.4853157103061676,
                        "Type": "eyeRight"
                    },
                    {
                        "Y": 0.17005006968975067,
                        "X": 0.44359859824180603,
                        "Type": "mouthLeft"
                    },
                    {
                        "Y": 0.19961224496364594,
                        "X": 0.4623497724533081,
                        "Type": "mouthRight"
                    },
                    {
                        "Y": 0.1493217796087265,
                        "X": 0.48088645935058594,
                        "Type": "nose"
                    },
                    {
                        "Y": 0.05354614928364754,
                        "X": 0.44851842522621155,
                        "Type": "leftEyeBrowLeft"
                    },
                    {
                        "Y": 0.07026811689138412,
                        "X": 0.47929850220680237,
                        "Type": "leftEyeBrowRight"
                    },
                    {
                        "Y": 0.057092346251010895,
                        "X": 0.46804264187812805,
                        "Type": "leftEyeBrowUp"
                    },
                    {
                        "Y": 0.09256315231323242,
                        "X": 0.49379271268844604,
                        "Type": "rightEyeBrowLeft"
                    },
                    {
                        "Y": 0.11690568923950195,
                        "X": 0.4935864806175232,
                        "Type": "rightEyeBrowRight"
                    },
                    {
                        "Y": 0.09890306740999222,
                        "X": 0.4987390637397766,
                        "Type": "rightEyeBrowUp"
                    },
                    {
                        "Y": 0.07898445427417755,
                        "X": 0.4527830481529236,
                        "Type": "leftEyeLeft"
                    },
                    {
                        "Y": 0.09390459954738617,
                        "X": 0.46486541628837585,
                        "Type": "leftEyeRight"
                    },
                    {
                        "Y": 0.08260698616504669,
                        "X": 0.46180856227874756,
                        "Type": "leftEyeUp"
                    },
                    {
                        "Y": 0.0897689163684845,
                        "X": 0.4595048427581787,
                        "Type": "leftEyeDown"
                    },
                    {
                        "Y": 0.11568951606750488,
                        "X": 0.48020249605178833,
                        "Type": "rightEyeLeft"
                    },
                    {
                        "Y": 0.1270626038312912,
                        "X": 0.48756760358810425,
                        "Type": "rightEyeRight"
                    },
                    {
                        "Y": 0.11834753304719925,
                        "X": 0.487597793340683,
                        "Type": "rightEyeUp"
                    },
                    {
                        "Y": 0.12478309869766235,
                        "X": 0.4849642515182495,
                        "Type": "rightEyeDown"
                    },
                    {
                        "Y": 0.1500532180070877,
                        "X": 0.46339690685272217,
                        "Type": "noseLeft"
                    },
                    {
                        "Y": 0.16106313467025757,
                        "X": 0.4711083173751831,
                        "Type": "noseRight"
                    },
                    {
                        "Y": 0.1727990210056305,
                        "X": 0.46375954151153564,
                        "Type": "mouthUp"
                    },
                    {
                        "Y": 0.1944318264722824,
                        "X": 0.45461297035217285,
                        "Type": "mouthDown"
                    },
                    {
                        "Y": 0.0845002830028534,
                        "X": 0.46130499243736267,
                        "Type": "leftPupil"
                    },
                    {
                        "Y": 0.12106677889823914,
                        "X": 0.4853157103061676,
                        "Type": "rightPupil"
                    },
                    {
                        "Y": 0.057100698351860046,
                        "X": 0.40793946385383606,
                        "Type": "upperJawlineLeft"
                    },
                    {
                        "Y": 0.14534570276737213,
                        "X": 0.39671075344085693,
                        "Type": "midJawlineLeft"
                    },
                    {
                        "Y": 0.22872915863990784,
                        "X": 0.43467050790786743,
                        "Type": "chinBottom"
                    },
                    {
                        "Y": 0.21035657823085785,
                        "X": 0.44430437684059143,
                        "Type": "midJawlineRight"
                    },
                    {
                        "Y": 0.1382691115140915,
                        "X": 0.46691712737083435,
                        "Type": "upperJawlineRight"
                    }
                ],
                "Pose": {
                    "Yaw": 42.129390716552734,
                    "Roll": 41.66864776611328,
                    "Pitch": 20.540363311767578
                },
                "Emotions": [
                    {
                        "Confidence": 0.0,
                        "Type": "CONFUSED"
                    },
                    {
                        "Confidence": 0.03389839828014374,
                        "Type": "HAPPY"
                    },
                    {
                        "Confidence": 0.8156020045280457,
                        "Type": "SURPRISED"
                    },
                    {
                        "Confidence": 0.22849714756011963,
                        "Type": "SAD"
                    },
                    {
                        "Confidence": 5.69551944732666,
                        "Type": "ANGRY"
                    },
                    {
                        "Confidence": 69.97489166259766,
                        "Type": "DISGUSTED"
                    },
                    {
                        "Confidence": 22.55771827697754,
                        "Type": "CALM"
                    }
                ],
                "AgeRange": {
                    "High": 45,
                    "Low": 29
                },
                "EyesOpen": {
                    "Confidence": 98.93328857421875,
                    "Value": false
                },
                "BoundingBox": {
                    "Width": 0.1042066141963005,
                    "Top": 0.012991358526051044,
                    "Left": 0.4012400209903717,
                    "Height": 0.2207736223936081
                },
                "Smile": {
                    "Confidence": 96.35631561279297,
                    "Value": false
                },
                "MouthOpen": {
                    "Confidence": 84.80248260498047,
                    "Value": false
                },
                "Quality": {
                    "Sharpness": 38.89601135253906,
                    "Brightness": 73.70428466796875
                },
                "Mustache": {
                    "Confidence": 99.827880859375,
                    "Value": false
                },
                "Beard": {
                    "Confidence": 95.46564483642578,
                    "Value": false
                }
            }
        },
        {
            "Timestamp": 5000,
            "Face": {
                "Confidence": 99.90603637695312,
                "Eyeglasses": {
                    "Confidence": 99.979248046875,
                    "Value": false
                },
                "Sunglasses": {
                    "Confidence": 99.99738311767578,
                    "Value": false
                },
                "Gender": {
                    "Confidence": 81.12164306640625,
                    "Value": "Male"
                },
                "Landmarks": [
                    {
                        "Y": 0.11271058022975922,
                        "X": 0.5014330744743347,
                        "Type": "eyeLeft"
                    },
                    {
                        "Y": 0.1399591565132141,
                        "X": 0.5178895592689514,
                        "Type": "eyeRight"
                    },
                    {
                        "Y": 0.18186822533607483,
                        "X": 0.48577800393104553,
                        "Type": "mouthLeft"
                    },
                    {
                        "Y": 0.20328861474990845,
                        "X": 0.4982980489730835,
                        "Type": "mouthRight"
                    },
                    {
                        "Y": 0.168096125125885,
                        "X": 0.5215568542480469,
                        "Type": "nose"
                    },
                    {
                        "Y": 0.08688557147979736,
                        "X": 0.4900648593902588,
                        "Type": "leftEyeBrowLeft"
                    },
                    {
                        "Y": 0.10249976068735123,
                        "X": 0.5181398391723633,
                        "Type": "leftEyeBrowRight"
                    },
                    {
                        "Y": 0.09153745323419571,
                        "X": 0.5083480477333069,
                        "Type": "leftEyeBrowUp"
                    },
                    {
                        "Y": 0.11955981701612473,
                        "X": 0.5280734300613403,
                        "Type": "rightEyeBrowLeft"
                    },
                    {
                        "Y": 0.13458824157714844,
                        "X": 0.5214567184448242,
                        "Type": "rightEyeBrowRight"
                    },
                    {
                        "Y": 0.12331537902355194,
                        "X": 0.5300381779670715,
                        "Type": "rightEyeBrowUp"
                    },
                    {
                        "Y": 0.1076914370059967,
                        "X": 0.49387818574905396,
                        "Type": "leftEyeLeft"
                    },
                    {
                        "Y": 0.11965878307819366,
                        "X": 0.5035508275032043,
                        "Type": "leftEyeRight"
                    },
                    {
                        "Y": 0.11122417449951172,
                        "X": 0.501986563205719,
                        "Type": "leftEyeUp"
                    },
                    {
                        "Y": 0.11677491664886475,
                        "X": 0.4998219609260559,
                        "Type": "leftEyeDown"
                    },
                    {
                        "Y": 0.13622590899467468,
                        "X": 0.5142925977706909,
                        "Type": "rightEyeLeft"
                    },
                    {
                        "Y": 0.1440443992614746,
                        "X": 0.5184059739112854,
                        "Type": "rightEyeRight"
                    },
                    {
                        "Y": 0.13828632235527039,
                        "X": 0.520157516002655,
                        "Type": "rightEyeUp"
                    },
                    {
                        "Y": 0.14320088922977448,
                        "X": 0.5177865624427795,
                        "Type": "rightEyeDown"
                    },
                    {
                        "Y": 0.16665586829185486,
                        "X": 0.5041642189025879,
                        "Type": "noseLeft"
                    },
                    {
                        "Y": 0.17401310801506042,
                        "X": 0.5091009140014648,
                        "Type": "noseRight"
                    },
                    {
                        "Y": 0.1841094046831131,
                        "X": 0.5043146014213562,
                        "Type": "mouthUp"
                    },
                    {
                        "Y": 0.2003936767578125,
                        "X": 0.4956788420677185,
                        "Type": "mouthDown"
                    },
                    {
                        "Y": 0.11271058022975922,
                        "X": 0.5014330744743347,
                        "Type": "leftPupil"
                    },
                    {
                        "Y": 0.1399591565132141,
                        "X": 0.5178895592689514,
                        "Type": "rightPupil"
                    },
                    {
                        "Y": 0.08271480351686478,
                        "X": 0.4477633833885193,
                        "Type": "upperJawlineLeft"
                    },
                    {
                        "Y": 0.15344862639904022,
                        "X": 0.4392834007740021,
                        "Type": "midJawlineLeft"
                    },
                    {
                        "Y": 0.22492218017578125,
                        "X": 0.47624310851097107,
                        "Type": "chinBottom"
                    },
                    {
                        "Y": 0.2028525024652481,
                        "X": 0.4731176495552063,
                        "Type": "midJawlineRight"
                    },
                    {
                        "Y": 0.1444091498851776,
                        "X": 0.4895907938480377,
                        "Type": "upperJawlineRight"
                    }
                ],
                "Pose": {
                    "Yaw": 50.61492919921875,
                    "Roll": 48.44514083862305,
                    "Pitch": 27.622982025146484
                },
                "Emotions": [
                    {
                        "Confidence": 8.441681861877441,
                        "Type": "SURPRISED"
                    },
                    {
                        "Confidence": 56.977622985839844,
                        "Type": "CALM"
                    },
                    {
                        "Confidence": 0.0,
                        "Type": "CONFUSED"
                    },
                    {
                        "Confidence": 0.05156566575169563,
                        "Type": "HAPPY"
                    },
                    {
                        "Confidence": 23.028913497924805,
                        "Type": "DISGUSTED"
                    },
                    {
                        "Confidence": 0.39865389466285706,
                        "Type": "SAD"
                    },
                    {
                        "Confidence": 10.028800010681152,
                        "Type": "ANGRY"
                    }
                ],
                "AgeRange": {
                    "High": 57,
                    "Low": 38
                },
                "EyesOpen": {
                    "Confidence": 98.94985961914062,
                    "Value": false
                },
                "BoundingBox": {
                    "Width": 0.10577304661273956,
                    "Top": 0.03099595382809639,
                    "Left": 0.44218599796295166,
                    "Height": 0.21945436298847198
                },
                "Smile": {
                    "Confidence": 98.63525390625,
                    "Value": false
                },
                "MouthOpen": {
                    "Confidence": 88.05256652832031,
                    "Value": false
                },
                "Quality": {
                    "Sharpness": 38.89601135253906,
                    "Brightness": 72.79242706298828
                },
                "Mustache": {
                    "Confidence": 99.80513763427734,
                    "Value": false
                },
                "Beard": {
                    "Confidence": 93.86184692382812,
                    "Value": false
                }
            }
        },
        {
            "Timestamp": 5200,
            "Face": {
                "Confidence": 99.99921417236328,
                "Eyeglasses": {
                    "Confidence": 99.98491668701172,
                    "Value": false
                },
                "Sunglasses": {
                    "Confidence": 99.99300384521484,
                    "Value": false
                },
                "Gender": {
                    "Confidence": 66.01898193359375,
                    "Value": "Female"
                },
                "Landmarks": [
                    {
                        "Y": 0.133408322930336,
                        "X": 0.5574378967285156,
                        "Type": "eyeLeft"
                    },
                    {
                        "Y": 0.16099879145622253,
                        "X": 0.5656313896179199,
                        "Type": "eyeRight"
                    },
                    {
                        "Y": 0.1944175809621811,
                        "X": 0.5366606712341309,
                        "Type": "mouthLeft"
                    },
                    {
                        "Y": 0.2158142775297165,
                        "X": 0.5422120094299316,
                        "Type": "mouthRight"
                    },
                    {
                        "Y": 0.1891072541475296,
                        "X": 0.5720837712287903,
                        "Type": "nose"
                    },
                    {
                        "Y": 0.10808740556240082,
                        "X": 0.5490429401397705,
                        "Type": "leftEyeBrowLeft"
                    },
                    {
                        "Y": 0.12773527204990387,
                        "X": 0.573951780796051,
                        "Type": "leftEyeBrowRight"
                    },
                    {
                        "Y": 0.11632025241851807,
                        "X": 0.5659860372543335,
                        "Type": "leftEyeBrowUp"
                    },
                    {
                        "Y": 0.14521458745002747,
                        "X": 0.579060435295105,
                        "Type": "rightEyeBrowLeft"
                    },
                    {
                        "Y": 0.15650847554206848,
                        "X": 0.5664769411087036,
                        "Type": "rightEyeBrowRight"
                    },
                    {
                        "Y": 0.1487286239862442,
                        "X": 0.5786028504371643,
                        "Type": "rightEyeBrowUp"
                    },
                    {
                        "Y": 0.127744659781456,
                        "X": 0.550517737865448,
                        "Type": "leftEyeLeft"
                    },
                    {
                        "Y": 0.1406896859407425,
                        "X": 0.5573919415473938,
                        "Type": "leftEyeRight"
                    },
                    {
                        "Y": 0.13271595537662506,
                        "X": 0.5576755404472351,
                        "Type": "leftEyeUp"
                    },
                    {
                        "Y": 0.1372915655374527,
                        "X": 0.5550481677055359,
                        "Type": "leftEyeDown"
                    },
                    {
                        "Y": 0.15781094133853912,
                        "X": 0.5633962154388428,
                        "Type": "rightEyeLeft"
                    },
                    {
                        "Y": 0.1654786318540573,
                        "X": 0.5645688772201538,
                        "Type": "rightEyeRight"
                    },
                    {
                        "Y": 0.16081023216247559,
                        "X": 0.5680756568908691,
                        "Type": "rightEyeUp"
                    },
                    {
                        "Y": 0.16472966969013214,
                        "X": 0.5653699636459351,
                        "Type": "rightEyeDown"
                    },
                    {
                        "Y": 0.18401654064655304,
                        "X": 0.5551202893257141,
                        "Type": "noseLeft"
                    },
                    {
                        "Y": 0.19112427532672882,
                        "X": 0.5571016669273376,
                        "Type": "noseRight"
                    },
                    {
                        "Y": 0.19927304983139038,
                        "X": 0.5530556440353394,
                        "Type": "mouthUp"
                    },
                    {
                        "Y": 0.21194200217723846,
                        "X": 0.543157160282135,
                        "Type": "mouthDown"
                    },
                    {
                        "Y": 0.133408322930336,
                        "X": 0.5574378967285156,
                        "Type": "leftPupil"
                    },
                    {
                        "Y": 0.16099879145622253,
                        "X": 0.5656313896179199,
                        "Type": "rightPupil"
                    },
                    {
                        "Y": 0.09438048303127289,
                        "X": 0.5059067606925964,
                        "Type": "upperJawlineLeft"
                    },
                    {
                        "Y": 0.15566270053386688,
                        "X": 0.49232345819473267,
                        "Type": "midJawlineLeft"
                    },
                    {
                        "Y": 0.22862845659255981,
                        "X": 0.5216081738471985,
                        "Type": "chinBottom"
                    },
                    {
                        "Y": 0.20696932077407837,
                        "X": 0.5120093822479248,
                        "Type": "midJawlineRight"
                    },
                    {
                        "Y": 0.15841688215732574,
                        "X": 0.5300807356834412,
                        "Type": "upperJawlineRight"
                    }
                ],
                "Pose": {
                    "Yaw": 57.59777069091797,
                    "Roll": 57.71172332763672,
                    "Pitch": 20.39309310913086
                },
                "Emotions": [
                    {
                        "Confidence": 36.68757629394531,
                        "Type": "CALM"
                    },
                    {
                        "Confidence": 14.047259330749512,
                        "Type": "DISGUSTED"
                    },
                    {
                        "Confidence": 0.5951733589172363,
                        "Type": "HAPPY"
                    },
                    {
                        "Confidence": 2.0621790885925293,
                        "Type": "SAD"
                    },
                    {
                        "Confidence": 26.895362854003906,
                        "Type": "ANGRY"
                    },
                    {
                        "Confidence": 0.0,
                        "Type": "CONFUSED"
                    },
                    {
                        "Confidence": 17.047948837280273,
                        "Type": "SURPRISED"
                    }
                ],
                "AgeRange": {
                    "High": 43,
                    "Low": 26
                },
                "EyesOpen": {
                    "Confidence": 96.33313751220703,
                    "Value": false
                },
                "BoundingBox": {
                    "Width": 0.08535773307085037,
                    "Top": 0.04687603935599327,
                    "Left": 0.4952324628829956,
                    "Height": 0.21656759083271027
                },
                "Smile": {
                    "Confidence": 98.42896270751953,
                    "Value": false
                },
                "MouthOpen": {
                    "Confidence": 85.18905639648438,
                    "Value": false
                },
                "Quality": {
                    "Sharpness": 38.89601135253906,
                    "Brightness": 76.13925170898438
                },
                "Mustache": {
                    "Confidence": 99.69637298583984,
                    "Value": false
                },
                "Beard": {
                    "Confidence": 94.30412292480469,
                    "Value": false
                }
            }
        },
        {
            "Timestamp": 22333,
            "Face": {
                "Confidence": 60.7020378112793,
                "Eyeglasses": {
                    "Confidence": 99.99614715576172,
                    "Value": false
                },
                "Sunglasses": {
                    "Confidence": 99.9905014038086,
                    "Value": false
                },
                "Gender": {
                    "Confidence": 95.19331359863281,
                    "Value": "Female"
                },
                "Landmarks": [
                    {
                        "Y": 0.37918081879615784,
                        "X": 0.5091633796691895,
                        "Type": "eyeLeft"
                    },
                    {
                        "Y": 0.46805882453918457,
                        "X": 0.6776334643363953,
                        "Type": "eyeRight"
                    },
                    {
                        "Y": 0.717512309551239,
                        "X": 0.46021267771720886,
                        "Type": "mouthLeft"
                    },
                    {
                        "Y": 0.7929283380508423,
                        "X": 0.6002826690673828,
                        "Type": "mouthRight"
                    },
                    {
                        "Y": 0.5993139743804932,
                        "X": 0.5317979454994202,
                        "Type": "nose"
                    },
                    {
                        "Y": 0.2757273018360138,
                        "X": 0.4652906060218811,
                        "Type": "leftEyeBrowLeft"
                    },
                    {
                        "Y": 0.30002889037132263,
                        "X": 0.5507023930549622,
                        "Type": "leftEyeBrowRight"
                    },
                    {
                        "Y": 0.26154688000679016,
                        "X": 0.509061872959137,
                        "Type": "leftEyeBrowUp"
                    },
                    {
                        "Y": 0.35155656933784485,
                        "X": 0.6500857472419739,
                        "Type": "rightEyeBrowLeft"
                    },
                    {
                        "Y": 0.42912793159484863,
                        "X": 0.7671130299568176,
                        "Type": "rightEyeBrowRight"
                    },
                    {
                        "Y": 0.36119142174720764,
                        "X": 0.7089036107063293,
                        "Type": "rightEyeBrowUp"
                    },
                    {
                        "Y": 0.36684930324554443,
                        "X": 0.48284146189689636,
                        "Type": "leftEyeLeft"
                    },
                    {
                        "Y": 0.40460503101348877,
                        "X": 0.5401666164398193,
                        "Type": "leftEyeRight"
                    },
                    {
                        "Y": 0.3672633469104767,
                        "X": 0.5093055963516235,
                        "Type": "leftEyeUp"
                    },
                    {
                        "Y": 0.3979994058609009,
                        "X": 0.5056328773498535,
                        "Type": "leftEyeDown"
                    },
                    {
                        "Y": 0.45773667097091675,
                        "X": 0.6402305364608765,
                        "Type": "rightEyeLeft"
                    },
                    {
                        "Y": 0.486996054649353,
                        "X": 0.7070448398590088,
                        "Type": "rightEyeRight"
                    },
                    {
                        "Y": 0.4563574194908142,
                        "X": 0.6756504774093628,
                        "Type": "rightEyeUp"
                    },
                    {
                        "Y": 0.4861622154712677,
                        "X": 0.6696227788925171,
                        "Type": "rightEyeDown"
                    },
                    {
                        "Y": 0.6217324137687683,
                        "X": 0.5085120797157288,
                        "Type": "noseLeft"
                    },
                    {
                        "Y": 0.6553357243537903,
                        "X": 0.5725914239883423,
                        "Type": "noseRight"
                    },
                    {
                        "Y": 0.7165778875350952,
                        "X": 0.5232126116752625,
                        "Type": "mouthUp"
                    },
                    {
                        "Y": 0.8157217502593994,
                        "X": 0.5086994171142578,
                        "Type": "mouthDown"
                    },
                    {
                        "Y": 0.37918081879615784,
                        "X": 0.5091633796691895,
                        "Type": "leftPupil"
                    },
                    {
                        "Y": 0.46805882453918457,
                        "X": 0.6776334643363953,
                        "Type": "rightPupil"
                    },
                    {
                        "Y": 0.3413695693016052,
                        "X": 0.4522404670715332,
                        "Type": "upperJawlineLeft"
                    },
                    {
                        "Y": 0.711436927318573,
                        "X": 0.4165409803390503,
                        "Type": "midJawlineLeft"
                    },
                    {
                        "Y": 0.9849167466163635,
                        "X": 0.4913689196109772,
                        "Type": "chinBottom"
                    },
                    {
                        "Y": 0.8715011477470398,
                        "X": 0.7174521684646606,
                        "Type": "midJawlineRight"
                    },
                    {
                        "Y": 0.5400934219360352,
                        "X": 0.8270268440246582,
                        "Type": "upperJawlineRight"
                    }
                ],
                "Pose": {
                    "Yaw": -15.004944801330566,
                    "Roll": 16.61305046081543,
                    "Pitch": -2.600437879562378
                },
                "Emotions": [
                    {
                        "Confidence": 18.946361541748047,
                        "Type": "CALM"
                    },
                    {
                        "Confidence": 6.798335075378418,
                        "Type": "SURPRISED"
                    },
                    {
                        "Confidence": 0.16614918410778046,
                        "Type": "HAPPY"
                    },
                    {
                        "Confidence": 60.21868133544922,
                        "Type": "DISGUSTED"
                    },
                    {
                        "Confidence": 0.0,
                        "Type": "CONFUSED"
                    },
                    {
                        "Confidence": 0.3655899167060852,
                        "Type": "SAD"
                    },
                    {
                        "Confidence": 0.6002785563468933,
                        "Type": "ANGRY"
                    }
                ],
                "AgeRange": {
                    "High": 43,
                    "Low": 26
                },
                "EyesOpen": {
                    "Confidence": 60.98509979248047,
                    "Value": false
                },
                "BoundingBox": {
                    "Width": 0.3920914828777313,
                    "Top": 0.15166014432907104,
                    "Left": 0.34920749068260193,
                    "Height": 0.8519890308380127
                },
                "Smile": {
                    "Confidence": 74.80099487304688,
                    "Value": false
                },
                "MouthOpen": {
                    "Confidence": 86.0054931640625,
                    "Value": false
                },
                "Quality": {
                    "Sharpness": 92.22801208496094,
                    "Brightness": 21.278827667236328
                },
                "Mustache": {
                    "Confidence": 99.82475280761719,
                    "Value": false
                },
                "Beard": {
                    "Confidence": 97.51274871826172,
                    "Value": false
                }
            }
        }
    ],
    "JobStatus": "IN_PROGRESS",
    "VideoMetadata": {
        "Format": "QuickTime / MOV",
        "FrameRate": 15.0,
        "Codec": "h264",
        "DurationMillis": 43000,
        "FrameHeight": 1080,
        "FrameWidth": 1920
    }
}
');
