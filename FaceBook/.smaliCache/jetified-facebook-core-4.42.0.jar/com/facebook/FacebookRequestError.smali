.class public final Lcom/facebook/FacebookRequestError;
.super Ljava/lang/Object;
.source "FacebookRequestError.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/FacebookRequestError$Category;,
        Lcom/facebook/FacebookRequestError$Range;
    }
.end annotation


# static fields
.field private static final BODY_KEY:Ljava/lang/String; = "body"

.field private static final CODE_KEY:Ljava/lang/String; = "code"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/facebook/FacebookRequestError;",
            ">;"
        }
    .end annotation
.end field

.field private static final ERROR_CODE_FIELD_KEY:Ljava/lang/String; = "code"

.field private static final ERROR_CODE_KEY:Ljava/lang/String; = "error_code"

.field private static final ERROR_IS_TRANSIENT_KEY:Ljava/lang/String; = "is_transient"

.field private static final ERROR_KEY:Ljava/lang/String; = "error"

.field private static final ERROR_MESSAGE_FIELD_KEY:Ljava/lang/String; = "message"

.field private static final ERROR_MSG_KEY:Ljava/lang/String; = "error_msg"

.field private static final ERROR_REASON_KEY:Ljava/lang/String; = "error_reason"

.field private static final ERROR_SUB_CODE_KEY:Ljava/lang/String; = "error_subcode"

.field private static final ERROR_TYPE_FIELD_KEY:Ljava/lang/String; = "type"

.field private static final ERROR_USER_MSG_KEY:Ljava/lang/String; = "error_user_msg"

.field private static final ERROR_USER_TITLE_KEY:Ljava/lang/String; = "error_user_title"

.field static final HTTP_RANGE_SUCCESS:Lcom/facebook/FacebookRequestError$Range;

.field public static final INVALID_ERROR_CODE:I = -0x1

.field public static final INVALID_HTTP_STATUS_CODE:I = -0x1


# instance fields
.field private final batchRequestResult:Ljava/lang/Object;

.field private final category:Lcom/facebook/FacebookRequestError$Category;

.field private final connection:Ljava/net/HttpURLConnection;

.field private final errorCode:I

.field private final errorMessage:Ljava/lang/String;

.field private final errorRecoveryMessage:Ljava/lang/String;

.field private final errorType:Ljava/lang/String;

.field private final errorUserMessage:Ljava/lang/String;

.field private final errorUserTitle:Ljava/lang/String;

.field private final exception:Lcom/facebook/FacebookException;

.field private final requestResult:Lorg/json/JSONObject;

.field private final requestResultBody:Lorg/json/JSONObject;

.field private final requestStatusCode:I

.field private final subErrorCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 84
    new-instance v0, Lcom/facebook/FacebookRequestError$Range;

    const/16 v1, 0xc8

    const/16 v2, 0x12b

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/FacebookRequestError$Range;-><init>(IILcom/facebook/FacebookRequestError$1;)V

    sput-object v0, Lcom/facebook/FacebookRequestError;->HTTP_RANGE_SUCCESS:Lcom/facebook/FacebookRequestError$Range;

    .line 451
    new-instance v0, Lcom/facebook/FacebookRequestError$1;

    invoke-direct {v0}, Lcom/facebook/FacebookRequestError$1;-><init>()V

    sput-object v0, Lcom/facebook/FacebookRequestError;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/Object;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookException;)V
    .registers 31
    .param p1, "requestStatusCode"    # I
    .param p2, "errorCode"    # I
    .param p3, "subErrorCode"    # I
    .param p4, "errorType"    # Ljava/lang/String;
    .param p5, "errorMessage"    # Ljava/lang/String;
    .param p6, "errorUserTitle"    # Ljava/lang/String;
    .param p7, "errorUserMessage"    # Ljava/lang/String;
    .param p8, "errorIsTransient"    # Z
    .param p9, "requestResultBody"    # Lorg/json/JSONObject;
    .param p10, "requestResult"    # Lorg/json/JSONObject;
    .param p11, "batchRequestResult"    # Ljava/lang/Object;
    .param p12, "connection"    # Ljava/net/HttpURLConnection;
    .param p13, "exception"    # Lcom/facebook/FacebookException;

    .line 114
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p5

    move-object/from16 v4, p13

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 115
    move/from16 v5, p1

    iput v5, v0, Lcom/facebook/FacebookRequestError;->requestStatusCode:I

    .line 116
    iput v1, v0, Lcom/facebook/FacebookRequestError;->errorCode:I

    .line 117
    iput v2, v0, Lcom/facebook/FacebookRequestError;->subErrorCode:I

    .line 118
    move-object/from16 v6, p4

    iput-object v6, v0, Lcom/facebook/FacebookRequestError;->errorType:Ljava/lang/String;

    .line 119
    iput-object v3, v0, Lcom/facebook/FacebookRequestError;->errorMessage:Ljava/lang/String;

    .line 120
    move-object/from16 v7, p9

    iput-object v7, v0, Lcom/facebook/FacebookRequestError;->requestResultBody:Lorg/json/JSONObject;

    .line 121
    move-object/from16 v8, p10

    iput-object v8, v0, Lcom/facebook/FacebookRequestError;->requestResult:Lorg/json/JSONObject;

    .line 122
    move-object/from16 v9, p11

    iput-object v9, v0, Lcom/facebook/FacebookRequestError;->batchRequestResult:Ljava/lang/Object;

    .line 123
    move-object/from16 v10, p12

    iput-object v10, v0, Lcom/facebook/FacebookRequestError;->connection:Ljava/net/HttpURLConnection;

    .line 124
    move-object/from16 v11, p6

    iput-object v11, v0, Lcom/facebook/FacebookRequestError;->errorUserTitle:Ljava/lang/String;

    .line 125
    move-object/from16 v12, p7

    iput-object v12, v0, Lcom/facebook/FacebookRequestError;->errorUserMessage:Ljava/lang/String;

    .line 127
    const/4 v13, 0x0

    .line 128
    .local v13, "isLocalException":Z
    if-eqz v4, :cond_3a

    .line 129
    iput-object v4, v0, Lcom/facebook/FacebookRequestError;->exception:Lcom/facebook/FacebookException;

    .line 130
    const/4 v13, 0x1

    goto :goto_41

    .line 132
    :cond_3a
    new-instance v14, Lcom/facebook/FacebookServiceException;

    invoke-direct {v14, v0, v3}, Lcom/facebook/FacebookServiceException;-><init>(Lcom/facebook/FacebookRequestError;Ljava/lang/String;)V

    iput-object v14, v0, Lcom/facebook/FacebookRequestError;->exception:Lcom/facebook/FacebookException;

    .line 135
    :goto_41
    invoke-static {}, Lcom/facebook/FacebookRequestError;->getErrorClassification()Lcom/facebook/internal/FacebookRequestErrorClassification;

    move-result-object v14

    .line 136
    .local v14, "errorClassification":Lcom/facebook/internal/FacebookRequestErrorClassification;
    if-eqz v13, :cond_4d

    sget-object v15, Lcom/facebook/FacebookRequestError$Category;->OTHER:Lcom/facebook/FacebookRequestError$Category;

    move-object v1, v15

    move/from16 v15, p8

    goto :goto_55

    .line 138
    :cond_4d
    move/from16 v15, p8

    invoke-virtual {v14, v1, v2, v15}, Lcom/facebook/internal/FacebookRequestErrorClassification;->classify(IIZ)Lcom/facebook/FacebookRequestError$Category;

    move-result-object v16

    move-object/from16 v1, v16

    :goto_55
    iput-object v1, v0, Lcom/facebook/FacebookRequestError;->category:Lcom/facebook/FacebookRequestError$Category;

    .line 139
    invoke-virtual {v14, v1}, Lcom/facebook/internal/FacebookRequestErrorClassification;->getRecoveryMessage(Lcom/facebook/FacebookRequestError$Category;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/facebook/FacebookRequestError;->errorRecoveryMessage:Ljava/lang/String;

    .line 140
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .registers 18
    .param p1, "errorCode"    # I
    .param p2, "errorType"    # Ljava/lang/String;
    .param p3, "errorMessage"    # Ljava/lang/String;

    .line 161
    const/4 v1, -0x1

    const/4 v3, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v0, p0

    move v2, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v13}, Lcom/facebook/FacebookRequestError;-><init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/Object;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookException;)V

    .line 175
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 16
    .param p1, "in"    # Landroid/os/Parcel;

    .line 463
    nop

    .line 464
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 465
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 466
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 467
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 468
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 469
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 470
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 463
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v13}, Lcom/facebook/FacebookRequestError;-><init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/Object;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookException;)V

    .line 478
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/facebook/FacebookRequestError$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/facebook/FacebookRequestError$1;

    .line 44
    invoke-direct {p0, p1}, Lcom/facebook/FacebookRequestError;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Ljava/net/HttpURLConnection;Ljava/lang/Exception;)V
    .registers 19
    .param p1, "connection"    # Ljava/net/HttpURLConnection;
    .param p2, "exception"    # Ljava/lang/Exception;

    .line 143
    move-object/from16 v0, p2

    instance-of v1, v0, Lcom/facebook/FacebookException;

    if-eqz v1, :cond_a

    move-object v1, v0

    check-cast v1, Lcom/facebook/FacebookException;

    goto :goto_f

    :cond_a
    new-instance v1, Lcom/facebook/FacebookException;

    invoke-direct {v1, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/Throwable;)V

    :goto_f
    move-object v15, v1

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v2, p0

    move-object/from16 v14, p1

    invoke-direct/range {v2 .. v15}, Lcom/facebook/FacebookRequestError;-><init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/Object;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookException;)V

    .line 158
    return-void
.end method

.method static checkResponseAndCreateError(Lorg/json/JSONObject;Ljava/lang/Object;Ljava/net/HttpURLConnection;)Lcom/facebook/FacebookRequestError;
    .registers 31
    .param p0, "singleResult"    # Lorg/json/JSONObject;
    .param p1, "batchResult"    # Ljava/lang/Object;
    .param p2, "connection"    # Ljava/net/HttpURLConnection;

    .line 343
    move-object/from16 v15, p0

    const-string v0, "error_code"

    const-string v1, "error"

    const-string v2, "FACEBOOK_NON_JSON_RESULT"

    const-string v3, "body"

    const-string v4, "code"

    :try_start_c
    invoke-virtual {v15, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_152

    .line 344
    invoke-virtual {v15, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    move v13, v5

    .line 345
    .local v13, "responseCode":I
    invoke-static {v15, v3, v2}, Lcom/facebook/internal/Utility;->getStringPropertyAsJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    move-object v12, v5

    .line 348
    .local v12, "body":Ljava/lang/Object;
    if-eqz v12, :cond_114

    instance-of v5, v12, Lorg/json/JSONObject;

    if-eqz v5, :cond_114

    .line 349
    move-object v5, v12

    check-cast v5, Lorg/json/JSONObject;

    move-object v11, v5

    .line 353
    .local v11, "jsonBody":Lorg/json/JSONObject;
    const/4 v5, 0x0

    .line 354
    .local v5, "errorType":Ljava/lang/String;
    const/4 v6, 0x0

    .line 355
    .local v6, "errorMessage":Ljava/lang/String;
    const/4 v7, 0x0

    .line 356
    .local v7, "errorUserMessage":Ljava/lang/String;
    const/4 v8, 0x0

    .line 357
    .local v8, "errorUserTitle":Ljava/lang/String;
    const/4 v9, 0x0

    .line 358
    .local v9, "errorIsTransient":Z
    const/4 v10, -0x1

    .line 359
    .local v10, "errorCode":I
    const/16 v16, -0x1

    .line 361
    .local v16, "errorSubCode":I
    const/16 v17, 0x0

    .line 362
    .local v17, "hasError":Z
    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v18
    :try_end_34
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_34} :catch_155

    const-string v14, "error_subcode"

    move-object/from16 v20, v5

    .end local v5    # "errorType":Ljava/lang/String;
    .local v20, "errorType":Ljava/lang/String;
    if-eqz v18, :cond_90

    .line 364
    nop

    .line 365
    const/4 v5, 0x0

    :try_start_3c
    invoke-static {v11, v1, v5}, Lcom/facebook/internal/Utility;->getStringPropertyAsJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 367
    .local v0, "error":Lorg/json/JSONObject;
    const-string v1, "type"

    invoke-virtual {v0, v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_48
    .catch Lorg/json/JSONException; {:try_start_3c .. :try_end_48} :catch_8b

    .line 368
    .end local v20    # "errorType":Ljava/lang/String;
    .local v1, "errorType":Ljava/lang/String;
    :try_start_48
    const-string v5, "message"
    :try_end_4a
    .catch Lorg/json/JSONException; {:try_start_48 .. :try_end_4a} :catch_155

    move-object/from16 v20, v1

    const/4 v1, 0x0

    .end local v1    # "errorType":Ljava/lang/String;
    .restart local v20    # "errorType":Ljava/lang/String;
    :try_start_4d
    invoke-virtual {v0, v5, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_51
    .catch Lorg/json/JSONException; {:try_start_4d .. :try_end_51} :catch_110

    move-object v6, v5

    .line 369
    const/4 v1, -0x1

    :try_start_53
    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    move v10, v4

    .line 370
    invoke-virtual {v0, v14, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    move/from16 v16, v1

    .line 371
    const-string v1, "error_user_msg"
    :try_end_60
    .catch Lorg/json/JSONException; {:try_start_53 .. :try_end_60} :catch_155

    const/4 v4, 0x0

    :try_start_61
    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v7, v1

    .line 372
    const-string v1, "error_user_title"

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_6c
    .catch Lorg/json/JSONException; {:try_start_61 .. :try_end_6c} :catch_86

    move-object v8, v1

    .line 373
    :try_start_6d
    const-string v1, "is_transient"

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    move v9, v1

    .line 374
    const/16 v17, 0x1

    .line 375
    .end local v0    # "error":Lorg/json/JSONObject;
    move-object v0, v6

    move/from16 v18, v9

    move/from16 v19, v10

    move/from16 v21, v16

    move/from16 v22, v17

    const/4 v1, 0x0

    move-object/from16 v16, v7

    move-object/from16 v17, v8

    goto :goto_dd

    .line 426
    .end local v6    # "errorMessage":Ljava/lang/String;
    .end local v7    # "errorUserMessage":Ljava/lang/String;
    .end local v8    # "errorUserTitle":Ljava/lang/String;
    .end local v9    # "errorIsTransient":Z
    .end local v10    # "errorCode":I
    .end local v11    # "jsonBody":Lorg/json/JSONObject;
    .end local v12    # "body":Ljava/lang/Object;
    .end local v13    # "responseCode":I
    .end local v16    # "errorSubCode":I
    .end local v17    # "hasError":Z
    .end local v20    # "errorType":Ljava/lang/String;
    :catch_86
    move-exception v0

    move-object/from16 v24, v4

    goto/16 :goto_158

    :catch_8b
    move-exception v0

    move-object/from16 v24, v5

    goto/16 :goto_158

    .line 375
    .restart local v6    # "errorMessage":Ljava/lang/String;
    .restart local v7    # "errorUserMessage":Ljava/lang/String;
    .restart local v8    # "errorUserTitle":Ljava/lang/String;
    .restart local v9    # "errorIsTransient":Z
    .restart local v10    # "errorCode":I
    .restart local v11    # "jsonBody":Lorg/json/JSONObject;
    .restart local v12    # "body":Ljava/lang/Object;
    .restart local v13    # "responseCode":I
    .restart local v16    # "errorSubCode":I
    .restart local v17    # "hasError":Z
    .restart local v20    # "errorType":Ljava/lang/String;
    :cond_90
    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1
    :try_end_94
    .catch Lorg/json/JSONException; {:try_start_6d .. :try_end_94} :catch_155

    const-string v4, "error_msg"

    const-string v5, "error_reason"

    if-nez v1, :cond_b6

    :try_start_9a
    invoke-virtual {v11, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b6

    .line 376
    invoke-virtual {v11, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1
    :try_end_a4
    .catch Lorg/json/JSONException; {:try_start_9a .. :try_end_a4} :catch_155

    if-eqz v1, :cond_a7

    goto :goto_b6

    :cond_a7
    move-object v0, v6

    move/from16 v18, v9

    move/from16 v19, v10

    move/from16 v21, v16

    move/from16 v22, v17

    const/4 v1, 0x0

    move-object/from16 v16, v7

    move-object/from16 v17, v8

    goto :goto_dd

    .line 377
    :cond_b6
    :goto_b6
    const/4 v1, 0x0

    :try_start_b7
    invoke-virtual {v11, v5, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 378
    .end local v20    # "errorType":Ljava/lang/String;
    .restart local v5    # "errorType":Ljava/lang/String;
    invoke-virtual {v11, v4, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v6, v4

    .line 379
    const/4 v4, -0x1

    invoke-virtual {v11, v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    move v10, v0

    .line 380
    invoke-virtual {v11, v14, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    move/from16 v16, v0

    .line 381
    const/16 v17, 0x1

    move-object/from16 v20, v5

    move-object v0, v6

    move/from16 v18, v9

    move/from16 v19, v10

    move/from16 v21, v16

    move/from16 v22, v17

    move-object/from16 v16, v7

    move-object/from16 v17, v8

    .line 384
    .end local v5    # "errorType":Ljava/lang/String;
    .end local v6    # "errorMessage":Ljava/lang/String;
    .end local v7    # "errorUserMessage":Ljava/lang/String;
    .end local v8    # "errorUserTitle":Ljava/lang/String;
    .end local v9    # "errorIsTransient":Z
    .end local v10    # "errorCode":I
    .local v0, "errorMessage":Ljava/lang/String;
    .local v16, "errorUserMessage":Ljava/lang/String;
    .local v17, "errorUserTitle":Ljava/lang/String;
    .local v18, "errorIsTransient":Z
    .local v19, "errorCode":I
    .restart local v20    # "errorType":Ljava/lang/String;
    .local v21, "errorSubCode":I
    .local v22, "hasError":Z
    :goto_dd
    if-eqz v22, :cond_106

    .line 385
    new-instance v23, Lcom/facebook/FacebookRequestError;
    :try_end_e1
    .catch Lorg/json/JSONException; {:try_start_b7 .. :try_end_e1} :catch_110

    const/4 v14, 0x0

    move-object/from16 v24, v1

    move-object/from16 v1, v23

    move v2, v13

    move/from16 v3, v19

    move/from16 v4, v21

    move-object/from16 v5, v20

    move-object v6, v0

    move-object/from16 v7, v17

    move-object/from16 v8, v16

    move/from16 v9, v18

    move-object v10, v11

    move-object/from16 v25, v11

    .end local v11    # "jsonBody":Lorg/json/JSONObject;
    .local v25, "jsonBody":Lorg/json/JSONObject;
    move-object/from16 v11, p0

    move-object/from16 v26, v12

    .end local v12    # "body":Ljava/lang/Object;
    .local v26, "body":Ljava/lang/Object;
    move-object/from16 v12, p1

    move-object/from16 v27, v0

    move v0, v13

    .end local v13    # "responseCode":I
    .local v0, "responseCode":I
    .local v27, "errorMessage":Ljava/lang/String;
    move-object/from16 v13, p2

    :try_start_102
    invoke-direct/range {v1 .. v14}, Lcom/facebook/FacebookRequestError;-><init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/Object;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookException;)V

    return-object v23

    .line 384
    .end local v25    # "jsonBody":Lorg/json/JSONObject;
    .end local v26    # "body":Ljava/lang/Object;
    .end local v27    # "errorMessage":Ljava/lang/String;
    .local v0, "errorMessage":Ljava/lang/String;
    .restart local v11    # "jsonBody":Lorg/json/JSONObject;
    .restart local v12    # "body":Ljava/lang/Object;
    .restart local v13    # "responseCode":I
    :cond_106
    move-object/from16 v27, v0

    move-object/from16 v24, v1

    move-object/from16 v25, v11

    move-object/from16 v26, v12

    move v0, v13

    .end local v11    # "jsonBody":Lorg/json/JSONObject;
    .end local v12    # "body":Ljava/lang/Object;
    .end local v13    # "responseCode":I
    .local v0, "responseCode":I
    .restart local v25    # "jsonBody":Lorg/json/JSONObject;
    .restart local v26    # "body":Ljava/lang/Object;
    .restart local v27    # "errorMessage":Ljava/lang/String;
    goto :goto_119

    .line 426
    .end local v0    # "responseCode":I
    .end local v16    # "errorUserMessage":Ljava/lang/String;
    .end local v17    # "errorUserTitle":Ljava/lang/String;
    .end local v18    # "errorIsTransient":Z
    .end local v19    # "errorCode":I
    .end local v20    # "errorType":Ljava/lang/String;
    .end local v21    # "errorSubCode":I
    .end local v22    # "hasError":Z
    .end local v25    # "jsonBody":Lorg/json/JSONObject;
    .end local v26    # "body":Ljava/lang/Object;
    .end local v27    # "errorMessage":Ljava/lang/String;
    :catch_110
    move-exception v0

    move-object/from16 v24, v1

    goto :goto_158

    .line 348
    .restart local v12    # "body":Ljava/lang/Object;
    .restart local v13    # "responseCode":I
    :cond_114
    move-object/from16 v26, v12

    move v0, v13

    const/16 v24, 0x0

    .line 404
    .end local v12    # "body":Ljava/lang/Object;
    .end local v13    # "responseCode":I
    .restart local v0    # "responseCode":I
    .restart local v26    # "body":Ljava/lang/Object;
    :goto_119
    sget-object v1, Lcom/facebook/FacebookRequestError;->HTTP_RANGE_SUCCESS:Lcom/facebook/FacebookRequestError$Range;

    invoke-virtual {v1, v0}, Lcom/facebook/FacebookRequestError$Range;->contains(I)Z

    move-result v1

    if-nez v1, :cond_154

    .line 405
    new-instance v16, Lcom/facebook/FacebookRequestError;

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 414
    invoke-virtual {v15, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_138

    .line 415
    invoke-static {v15, v3, v2}, Lcom/facebook/internal/Utility;->getStringPropertyAsJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    move-object v11, v1

    goto :goto_13a

    :cond_138
    move-object/from16 v11, v24

    :goto_13a
    const/4 v14, 0x0

    move-object/from16 v1, v16

    move v2, v0

    move v3, v4

    move v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move v9, v10

    move-object v10, v11

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    invoke-direct/range {v1 .. v14}, Lcom/facebook/FacebookRequestError;-><init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/Object;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookException;)V
    :try_end_14f
    .catch Lorg/json/JSONException; {:try_start_102 .. :try_end_14f} :catch_150

    .line 405
    return-object v16

    .line 426
    .end local v0    # "responseCode":I
    .end local v26    # "body":Ljava/lang/Object;
    :catch_150
    move-exception v0

    goto :goto_158

    .line 343
    :cond_152
    const/16 v24, 0x0

    .line 427
    :cond_154
    goto :goto_158

    .line 426
    :catch_155
    move-exception v0

    const/16 v24, 0x0

    .line 428
    :goto_158
    return-object v24
.end method

.method static declared-synchronized getErrorClassification()Lcom/facebook/internal/FacebookRequestErrorClassification;
    .registers 3

    const-class v0, Lcom/facebook/FacebookRequestError;

    monitor-enter v0

    .line 434
    :try_start_3
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/internal/FetchedAppSettingsManager;->getAppSettingsWithoutQuery(Ljava/lang/String;)Lcom/facebook/internal/FetchedAppSettings;

    move-result-object v1

    .line 435
    .local v1, "appSettings":Lcom/facebook/internal/FetchedAppSettings;
    if-nez v1, :cond_13

    .line 436
    invoke-static {}, Lcom/facebook/internal/FacebookRequestErrorClassification;->getDefaultErrorClassification()Lcom/facebook/internal/FacebookRequestErrorClassification;

    move-result-object v2
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_19

    monitor-exit v0

    return-object v2

    .line 438
    :cond_13
    :try_start_13
    invoke-virtual {v1}, Lcom/facebook/internal/FetchedAppSettings;->getErrorClassification()Lcom/facebook/internal/FacebookRequestErrorClassification;

    move-result-object v2
    :try_end_17
    .catchall {:try_start_13 .. :try_end_17} :catchall_19

    monitor-exit v0

    return-object v2

    .line 433
    .end local v1    # "appSettings":Lcom/facebook/internal/FetchedAppSettings;
    :catchall_19
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 481
    const/4 v0, 0x0

    return v0
.end method

.method public getBatchRequestResult()Ljava/lang/Object;
    .registers 2

    .line 301
    iget-object v0, p0, Lcom/facebook/FacebookRequestError;->batchRequestResult:Ljava/lang/Object;

    return-object v0
.end method

.method public getCategory()Lcom/facebook/FacebookRequestError$Category;
    .registers 2

    .line 185
    iget-object v0, p0, Lcom/facebook/FacebookRequestError;->category:Lcom/facebook/FacebookRequestError$Category;

    return-object v0
.end method

.method public getConnection()Ljava/net/HttpURLConnection;
    .registers 2

    .line 310
    iget-object v0, p0, Lcom/facebook/FacebookRequestError;->connection:Ljava/net/HttpURLConnection;

    return-object v0
.end method

.method public getErrorCode()I
    .registers 2

    .line 203
    iget v0, p0, Lcom/facebook/FacebookRequestError;->errorCode:I

    return v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .registers 2

    .line 232
    iget-object v0, p0, Lcom/facebook/FacebookRequestError;->errorMessage:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 233
    return-object v0

    .line 235
    :cond_5
    iget-object v0, p0, Lcom/facebook/FacebookRequestError;->exception:Lcom/facebook/FacebookException;

    invoke-virtual {v0}, Lcom/facebook/FacebookException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getErrorRecoveryMessage()Ljava/lang/String;
    .registers 2

    .line 244
    iget-object v0, p0, Lcom/facebook/FacebookRequestError;->errorRecoveryMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorType()Ljava/lang/String;
    .registers 2

    .line 223
    iget-object v0, p0, Lcom/facebook/FacebookRequestError;->errorType:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorUserMessage()Ljava/lang/String;
    .registers 2

    .line 256
    iget-object v0, p0, Lcom/facebook/FacebookRequestError;->errorUserMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorUserTitle()Ljava/lang/String;
    .registers 2

    .line 267
    iget-object v0, p0, Lcom/facebook/FacebookRequestError;->errorUserTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getException()Lcom/facebook/FacebookException;
    .registers 2

    .line 319
    iget-object v0, p0, Lcom/facebook/FacebookRequestError;->exception:Lcom/facebook/FacebookException;

    return-object v0
.end method

.method public getRequestResult()Lorg/json/JSONObject;
    .registers 2

    .line 288
    iget-object v0, p0, Lcom/facebook/FacebookRequestError;->requestResult:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getRequestResultBody()Lorg/json/JSONObject;
    .registers 2

    .line 276
    iget-object v0, p0, Lcom/facebook/FacebookRequestError;->requestResultBody:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getRequestStatusCode()I
    .registers 2

    .line 194
    iget v0, p0, Lcom/facebook/FacebookRequestError;->requestStatusCode:I

    return v0
.end method

.method public getSubErrorCode()I
    .registers 2

    .line 212
    iget v0, p0, Lcom/facebook/FacebookRequestError;->subErrorCode:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 324
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{HttpStatus: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/facebook/FacebookRequestError;->requestStatusCode:I

    .line 325
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 326
    const-string v1, ", errorCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/facebook/FacebookRequestError;->errorCode:I

    .line 327
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 328
    const-string v1, ", subErrorCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/facebook/FacebookRequestError;->subErrorCode:I

    .line 329
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 330
    const-string v1, ", errorType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/FacebookRequestError;->errorType:Ljava/lang/String;

    .line 331
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 332
    const-string v1, ", errorMessage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 333
    invoke-virtual {p0}, Lcom/facebook/FacebookRequestError;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 334
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 335
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 324
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 442
    iget v0, p0, Lcom/facebook/FacebookRequestError;->requestStatusCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 443
    iget v0, p0, Lcom/facebook/FacebookRequestError;->errorCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 444
    iget v0, p0, Lcom/facebook/FacebookRequestError;->subErrorCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 445
    iget-object v0, p0, Lcom/facebook/FacebookRequestError;->errorType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 446
    iget-object v0, p0, Lcom/facebook/FacebookRequestError;->errorMessage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 447
    iget-object v0, p0, Lcom/facebook/FacebookRequestError;->errorUserTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 448
    iget-object v0, p0, Lcom/facebook/FacebookRequestError;->errorUserMessage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 449
    return-void
.end method
