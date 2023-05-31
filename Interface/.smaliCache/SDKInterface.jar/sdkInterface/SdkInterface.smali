.class public LsdkInterface/SdkInterface;
.super Ljava/lang/Object;
.source "SdkInterface.java"


# static fields
.field static final CallBackFuntionName:Ljava/lang/String; = "OnSDKCallBack"

.field static final CallBackObjectName:Ljava/lang/String; = "CallBackObject"

.field static SdkManifest:Ljava/util/Properties;

.field public static actResultRequest:LsdkInterface/tool/ActResultRequest;

.field static adSDKList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "LsdkInterface/SDKBase;",
            ">;"
        }
    .end annotation
.end field

.field static allClass:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "LsdkInterface/SDKBase;",
            ">;"
        }
    .end annotation
.end field

.field static isCallBack:Ljava/lang/Boolean;

.field static isInit:Z

.field static isLog:Z

.field static isMultiDex:Z

.field static logList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "LsdkInterface/SDKBase;",
            ">;"
        }
    .end annotation
.end field

.field static loginSDKList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "LsdkInterface/SDKBase;",
            ">;"
        }
    .end annotation
.end field

.field static otherSDKList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "LsdkInterface/SDKBase;",
            ">;"
        }
    .end annotation
.end field

.field static paySDKList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "LsdkInterface/SDKBase;",
            ">;"
        }
    .end annotation
.end field

.field static realNameSDKList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "LsdkInterface/SDKBase;",
            ">;"
        }
    .end annotation
.end field

.field private static sCallbacks:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "LsdkInterface/tool/ActResultRequest$Callback;",
            ">;"
        }
    .end annotation
.end field

.field public static sRequestCode:I

.field static shareSDKList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "LsdkInterface/SDKBase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 29
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, LsdkInterface/SdkInterface;->isCallBack:Ljava/lang/Boolean;

    .line 32
    sput-boolean v0, LsdkInterface/SdkInterface;->isInit:Z

    .line 33
    const/4 v1, 0x1

    sput-boolean v1, LsdkInterface/SdkInterface;->isLog:Z

    .line 34
    sput-boolean v0, LsdkInterface/SdkInterface;->isMultiDex:Z

    .line 42
    const/16 v0, 0x11

    sput v0, LsdkInterface/SdkInterface;->sRequestCode:I

    .line 43
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, LsdkInterface/SdkInterface;->sCallbacks:Landroid/util/SparseArray;

    .line 1393
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, LsdkInterface/SdkInterface;->allClass:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static AD(Lorg/json/JSONObject;)V
    .registers 6
    .param p0, "json"    # Lorg/json/JSONObject;

    .line 508
    :try_start_0
    sget-object v0, LsdkInterface/SdkInterface;->adSDKList:Ljava/util/ArrayList;

    invoke-static {p0, v0}, LsdkInterface/SdkInterface;->GetSDK(Lorg/json/JSONObject;Ljava/util/ArrayList;)LsdkInterface/SDKBase;

    move-result-object v0

    check-cast v0, LsdkInterface/IAD;

    .line 509
    .local v0, "ad":LsdkInterface/IAD;
    const/4 v1, 0x0

    if-eqz v0, :cond_5f

    .line 511
    const-string v2, "FunctionName"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 512
    .local v2, "functionName":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_9c

    :cond_18
    goto :goto_37

    :sswitch_19
    const-string v3, "CloseAD"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    const/4 v3, 0x1

    goto :goto_38

    :sswitch_23
    const-string v3, "PlayAD"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    const/4 v3, 0x0

    goto :goto_38

    :sswitch_2d
    const-string v3, "LoadAD"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    const/4 v3, 0x2

    goto :goto_38

    :goto_37
    const/4 v3, -0x1

    :goto_38
    packed-switch v3, :pswitch_data_aa

    goto :goto_48

    .line 519
    :pswitch_3c
    invoke-interface {v0, p0}, LsdkInterface/IAD;->LoadAD(Lorg/json/JSONObject;)V

    goto :goto_48

    .line 517
    :pswitch_40
    invoke-interface {v0, p0}, LsdkInterface/IAD;->CloseAD(Lorg/json/JSONObject;)V

    goto :goto_5e

    .line 515
    :pswitch_44
    invoke-interface {v0, p0}, LsdkInterface/IAD;->PlayAD(Lorg/json/JSONObject;)V

    goto :goto_5e

    .line 521
    :goto_48
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not find AD Function "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, LsdkInterface/SdkInterface;->SendError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 523
    .end local v2    # "functionName":Ljava/lang/String;
    :goto_5e
    goto :goto_79

    .line 526
    :cond_5f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not find AD Class -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, LsdkInterface/SdkInterface;->SendError(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_79} :catch_7a

    .line 531
    .end local v0    # "ad":LsdkInterface/IAD;
    :goto_79
    goto :goto_9b

    .line 529
    :catch_7a
    move-exception v0

    .line 530
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SDKInterface AD json:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " e:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, LsdkInterface/SdkInterface;->SendError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 532
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_9b
    return-void

    :sswitch_data_9c
    .sparse-switch
        -0x7805e857 -> :sswitch_2d
        -0x715c7d89 -> :sswitch_23
        -0x69212005 -> :sswitch_19
    .end sparse-switch

    :pswitch_data_aa
    .packed-switch 0x0
        :pswitch_44
        :pswitch_40
        :pswitch_3c
    .end packed-switch
.end method

.method public static ADIsLoad(Ljava/lang/String;)Z
    .registers 5
    .param p0, "content"    # Ljava/lang/String;

    .line 537
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 539
    .local v0, "json":Lorg/json/JSONObject;
    sget-object v1, LsdkInterface/SdkInterface;->adSDKList:Ljava/util/ArrayList;

    invoke-static {v0, v1}, LsdkInterface/SdkInterface;->GetSDK(Lorg/json/JSONObject;Ljava/util/ArrayList;)LsdkInterface/SDKBase;

    move-result-object v1

    check-cast v1, LsdkInterface/IAD;

    .line 540
    .local v1, "ad":LsdkInterface/IAD;
    if-eqz v1, :cond_18

    .line 541
    invoke-interface {v1, v0}, LsdkInterface/IAD;->IsLoaded(Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    return v2

    .line 545
    :cond_18
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not find AD Class -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " adSDKList is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, LsdkInterface/SdkInterface;->adSDKList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, LsdkInterface/SdkInterface;->SendError(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_43} :catch_44

    .line 550
    .end local v0    # "json":Lorg/json/JSONObject;
    .end local v1    # "ad":LsdkInterface/IAD;
    goto :goto_5b

    .line 548
    :catch_44
    move-exception v0

    .line 549
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SDKInterface ADIsLoad error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, LsdkInterface/SdkInterface;->SendError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 551
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_5b
    const/4 v0, 0x0

    return v0
.end method

.method static ApplictaionQuit()Z
    .registers 4

    .line 1267
    const/4 v0, 0x0

    .line 1268
    .local v0, "isNotQuit":Z
    sget-object v1, LsdkInterface/SdkInterface;->allClass:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1270
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;LsdkInterface/SDKBase;>;"
    if-nez v0, :cond_23

    .line 1272
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LsdkInterface/SDKBase;

    invoke-virtual {v3}, LsdkInterface/SDKBase;->OnAppplicationQuit()Z

    move-result v0

    .line 1274
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;LsdkInterface/SDKBase;>;"
    :cond_23
    goto :goto_b

    .line 1276
    :cond_24
    return v0
.end method

.method public static AttachBaseContext(Landroid/content/Context;)V
    .registers 4
    .param p0, "base"    # Landroid/content/Context;

    .line 912
    const-string v0, "SDKInterface AttachBaseContext "

    invoke-static {v0}, LsdkInterface/SdkInterface;->SendLog(Ljava/lang/String;)V

    .line 914
    :try_start_5
    sget-object v0, LsdkInterface/SdkInterface;->allClass:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 916
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;LsdkInterface/SDKBase;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LsdkInterface/SDKBase;

    invoke-virtual {v2, p0}, LsdkInterface/SDKBase;->AttachBaseContext(Landroid/content/Context;)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_24} :catch_26

    .line 917
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;LsdkInterface/SDKBase;>;"
    goto :goto_f

    .line 922
    :cond_25
    goto :goto_41

    .line 919
    :catch_26
    move-exception v0

    .line 921
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AttachBaseContext Error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, LsdkInterface/SdkInterface;->SendError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 923
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_41
    return-void
.end method

.method public static GetCallStrack(Ljava/lang/Exception;)Ljava/lang/String;
    .registers 6
    .param p0, "e"    # Ljava/lang/Exception;

    .line 848
    if-nez p0, :cond_5

    .line 850
    const-string v0, ""

    return-object v0

    .line 853
    :cond_5
    const-string v0, ""

    .line 855
    .local v0, "content":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 857
    .local v1, "stackElements":[Ljava/lang/StackTraceElement;
    if-eqz v1, :cond_67

    .line 858
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_e
    array-length v3, v1

    if-ge v2, v3, :cond_67

    .line 859
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\t at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v1, v2

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v1, v2

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v1, v2

    .line 860
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v1, v2

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 858
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 863
    .end local v2    # "i":I
    :cond_67
    return-object v0
.end method

.method public static GetClass(Ljava/lang/String;Lorg/json/JSONObject;)LsdkInterface/SDKBase;
    .registers 5
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "json"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1397
    sget-object v0, LsdkInterface/SdkInterface;->allClass:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1399
    sget-object v0, LsdkInterface/SdkInterface;->allClass:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LsdkInterface/SDKBase;

    return-object v0

    .line 1403
    :cond_11
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1404
    .local v0, "cla":Ljava/lang/Class;
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LsdkInterface/SDKBase;

    .line 1405
    .local v1, "sdk":LsdkInterface/SDKBase;
    sget-object v2, LsdkInterface/SdkInterface;->SdkManifest:Ljava/util/Properties;

    invoke-virtual {v2, p0, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, LsdkInterface/SDKBase;->SDKName:Ljava/lang/String;

    .line 1406
    sget-object v2, LsdkInterface/SdkInterface;->allClass:Ljava/util/HashMap;

    invoke-virtual {v2, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1408
    return-object v1
.end method

.method public static GetContext()Landroid/content/Context;
    .registers 1

    .line 1390
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static GetIsLog()Z
    .registers 2

    .line 1321
    sget-object v0, LsdkInterface/SdkInterface;->SdkManifest:Ljava/util/Properties;

    const-string v1, "IsLog"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1323
    sget-object v0, LsdkInterface/SdkInterface;->SdkManifest:Ljava/util/Properties;

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 1327
    :cond_15
    const/4 v0, 0x0

    return v0
.end method

.method static GetIsMultiDex()Z
    .registers 2

    .line 1333
    sget-object v0, LsdkInterface/SdkInterface;->SdkManifest:Ljava/util/Properties;

    const-string v1, "IsMultiDex"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1335
    sget-object v0, LsdkInterface/SdkInterface;->SdkManifest:Ljava/util/Properties;

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 1339
    :cond_15
    const/4 v0, 0x0

    return v0
.end method

.method public static GetPrePay(Ljava/lang/String;)Z
    .registers 4
    .param p0, "SDKName"    # Ljava/lang/String;

    .line 446
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GetPrePay >"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LsdkInterface/SdkInterface;->SendLog(Ljava/lang/String;)V

    .line 448
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1d
    sget-object v1, LsdkInterface/SdkInterface;->paySDKList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_45

    .line 450
    sget-object v1, LsdkInterface/SdkInterface;->paySDKList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LsdkInterface/SDKBase;

    iget-object v1, v1, LsdkInterface/SDKBase;->SDKName:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 452
    sget-object v1, LsdkInterface/SdkInterface;->paySDKList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LsdkInterface/IPay;

    .line 453
    .local v1, "pay":LsdkInterface/IPay;
    invoke-interface {v1}, LsdkInterface/IPay;->IsPrePay()Z

    move-result v2

    return v2

    .line 448
    .end local v1    # "pay":LsdkInterface/IPay;
    :cond_42
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 457
    .end local v0    # "i":I
    :cond_45
    const/4 v0, 0x0

    return v0
.end method

.method public static GetProperties(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "properties"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .line 158
    :try_start_0
    invoke-static {}, LsdkInterface/SdkInterface;->GetContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, LsdkInterface/tool/PropertieTool;->getProperties(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Properties;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 160
    invoke-static {}, LsdkInterface/SdkInterface;->GetContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, LsdkInterface/tool/PropertieTool;->getProperties(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Properties;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1a} :catch_1c

    return-object v0

    .line 164
    :cond_1b
    return-object p2

    .line 167
    :catch_1c
    move-exception v0

    .line 169
    .local v0, "e":Ljava/lang/Exception;
    return-object p2
.end method

.method public static GetReSendPay(Ljava/lang/String;)Z
    .registers 4
    .param p0, "SDKName"    # Ljava/lang/String;

    .line 462
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GetReSendPay >"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LsdkInterface/SdkInterface;->SendLog(Ljava/lang/String;)V

    .line 464
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1d
    sget-object v1, LsdkInterface/SdkInterface;->paySDKList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_45

    .line 466
    sget-object v1, LsdkInterface/SdkInterface;->paySDKList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LsdkInterface/SDKBase;

    iget-object v1, v1, LsdkInterface/SDKBase;->SDKName:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 468
    sget-object v1, LsdkInterface/SdkInterface;->paySDKList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LsdkInterface/IPay;

    .line 469
    .local v1, "pay":LsdkInterface/IPay;
    invoke-interface {v1}, LsdkInterface/IPay;->IsReSendPay()Z

    move-result v2

    return v2

    .line 464
    .end local v1    # "pay":LsdkInterface/IPay;
    :cond_42
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 473
    .end local v0    # "i":I
    :cond_45
    const/4 v0, 0x0

    return v0
.end method

.method static GetSDK(Lorg/json/JSONObject;Ljava/util/ArrayList;)LsdkInterface/SDKBase;
    .registers 8
    .param p0, "json"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/ArrayList<",
            "LsdkInterface/SDKBase;",
            ">;)",
            "LsdkInterface/SDKBase;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1349
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<LsdkInterface/SDKBase;>;"
    sget-boolean v0, LsdkInterface/SdkInterface;->isInit:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_a7

    .line 1351
    const-string v0, "SDKName"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8c

    .line 1353
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1354
    .local v0, "SDKName":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_12
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3a

    .line 1356
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LsdkInterface/SDKBase;

    iget-object v3, v3, LsdkInterface/SDKBase;->SDKName:Ljava/lang/String;

    if-eqz v3, :cond_37

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LsdkInterface/SDKBase;

    iget-object v3, v3, LsdkInterface/SDKBase;->SDKName:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_37

    .line 1358
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LsdkInterface/SDKBase;

    return-object v1

    .line 1354
    :cond_37
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 1362
    .end local v2    # "i":I
    :cond_3a
    const-string v2, ""

    .line 1363
    .local v2, "sdkList":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3d
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_65

    .line 1365
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LsdkInterface/SDKBase;

    iget-object v5, v5, LsdkInterface/SDKBase;->SDKName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1363
    add-int/lit8 v3, v3, 0x1

    goto :goto_3d

    .line 1368
    .end local v3    # "i":I
    :cond_65
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GetSDK \u627e\u4e0d\u5230 SDKName:  SDKName ->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "<  sdkList ->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "<"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, LsdkInterface/SdkInterface;->SendLog(Ljava/lang/String;)V

    .line 1369
    return-object v1

    .line 1371
    .end local v0    # "SDKName":Ljava/lang/String;
    .end local v2    # "sdkList":Ljava/lang/String;
    :cond_8c
    const-string v0, "SDKIndex"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9f

    .line 1373
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 1374
    .local v0, "index":I
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LsdkInterface/SDKBase;

    return-object v1

    .line 1378
    .end local v0    # "index":I
    :cond_9f
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LsdkInterface/SDKBase;

    return-object v0

    .line 1383
    :cond_a7
    const-string v0, "SDKManager\u5c1a\u672a\u521d\u59cb\u5316\uff01"

    invoke-static {v0}, LsdkInterface/SdkInterface;->SendLog(Ljava/lang/String;)V

    .line 1384
    return-object v1
.end method

.method public static GetSupportLoginPlatform()Ljava/lang/String;
    .registers 4

    .line 175
    const-string v0, ""

    .line 176
    .local v0, "result":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    sget-object v2, LsdkInterface/SdkInterface;->loginSDKList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_46

    .line 178
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, LsdkInterface/SdkInterface;->loginSDKList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LsdkInterface/SDKBase;

    iget-object v3, v3, LsdkInterface/SDKBase;->SDKName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 180
    sget-object v2, LsdkInterface/SdkInterface;->loginSDKList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_43

    .line 182
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 176
    :cond_43
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 185
    .end local v1    # "i":I
    :cond_46
    return-object v0
.end method

.method public static GetSupportSharePlatform()Ljava/lang/String;
    .registers 4

    .line 829
    const-string v0, ""

    .line 830
    .local v0, "result":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    sget-object v2, LsdkInterface/SdkInterface;->shareSDKList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_46

    .line 832
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, LsdkInterface/SdkInterface;->shareSDKList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LsdkInterface/SDKBase;

    iget-object v3, v3, LsdkInterface/SDKBase;->SDKName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 834
    sget-object v2, LsdkInterface/SdkInterface;->shareSDKList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_43

    .line 836
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 830
    :cond_43
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 839
    .end local v1    # "i":I
    :cond_46
    return-object v0
.end method

.method public static Init()V
    .registers 3

    .line 930
    sget-boolean v0, LsdkInterface/SdkInterface;->isInit:Z

    if-nez v0, :cond_3d

    .line 931
    const/4 v0, 0x1

    sput-boolean v0, LsdkInterface/SdkInterface;->isInit:Z

    .line 934
    :try_start_7
    const-string v0, "SDKInterBase OnCreate "

    invoke-static {v0}, LsdkInterface/SdkInterface;->SendLog(Ljava/lang/String;)V

    .line 936
    invoke-static {}, LsdkInterface/SdkInterface;->InitSdkManifestProperty()V

    .line 939
    const/4 v0, 0x0

    invoke-static {v0}, LsdkInterface/SdkInterface;->InitLoginSDK(Lorg/json/JSONObject;)V

    .line 940
    invoke-static {v0}, LsdkInterface/SdkInterface;->InitLog(Lorg/json/JSONObject;)V

    .line 941
    invoke-static {v0}, LsdkInterface/SdkInterface;->InitPay(Lorg/json/JSONObject;)V

    .line 942
    invoke-static {v0}, LsdkInterface/SdkInterface;->InitAD(Lorg/json/JSONObject;)V

    .line 943
    invoke-static {v0}, LsdkInterface/SdkInterface;->InitShare(Lorg/json/JSONObject;)V

    .line 944
    invoke-static {v0}, LsdkInterface/SdkInterface;->InitOther(Lorg/json/JSONObject;)V

    .line 945
    invoke-static {v0}, LsdkInterface/SdkInterface;->InitRealName(Lorg/json/JSONObject;)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_25} :catch_26

    .line 948
    goto :goto_3d

    .line 946
    :catch_26
    move-exception v0

    .line 947
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnCreate Error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, LsdkInterface/SdkInterface;->SendError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 950
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3d
    :goto_3d
    return-void
.end method

.method static Init(Lorg/json/JSONObject;)V
    .registers 6
    .param p0, "json"    # Lorg/json/JSONObject;

    .line 278
    invoke-static {}, LsdkInterface/SdkInterface;->Init()V

    .line 279
    invoke-static {}, LsdkInterface/SdkInterface;->InitActResultRequest()V

    .line 281
    const-string v0, "SDKManager Init "

    invoke-static {v0}, LsdkInterface/SdkInterface;->SendLog(Ljava/lang/String;)V

    .line 284
    :try_start_b
    sget-object v0, LsdkInterface/SdkInterface;->allClass:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_51

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_21} :catch_52

    .line 287
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;LsdkInterface/SDKBase;>;"
    :try_start_21
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LsdkInterface/SDKBase;

    invoke-virtual {v2, p0}, LsdkInterface/SDKBase;->Init(Lorg/json/JSONObject;)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_2a} :catch_2b

    .line 292
    goto :goto_50

    .line 289
    :catch_2b
    move-exception v2

    .line 291
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Init Error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, LsdkInterface/SdkInterface;->SendError(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_50} :catch_52

    .line 293
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;LsdkInterface/SDKBase;>;"
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_50
    goto :goto_15

    .line 298
    :cond_51
    goto :goto_6d

    .line 295
    :catch_52
    move-exception v0

    .line 297
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Init Exception: ->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, LsdkInterface/SdkInterface;->SendError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 299
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_6d
    return-void
.end method

.method static InitAD(Lorg/json/JSONObject;)V
    .registers 7
    .param p0, "json"    # Lorg/json/JSONObject;

    .line 481
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, LsdkInterface/SdkInterface;->adSDKList:Ljava/util/ArrayList;

    .line 483
    sget-object v0, LsdkInterface/SdkInterface;->SdkManifest:Ljava/util/Properties;

    const-string v1, "AD"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 484
    .local v0, "adClassNameConfig":Ljava/lang/String;
    const-string v1, "\\|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 486
    .local v1, "adClassNameList":[Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AD init ->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " adClassNameList length is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, LsdkInterface/SdkInterface;->SendLog(Ljava/lang/String;)V

    .line 488
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_37
    array-length v3, v1

    if-ge v2, v3, :cond_5c

    .line 491
    aget-object v3, v1, v2

    if-eqz v3, :cond_59

    aget-object v3, v1, v2

    const-string v4, ""

    if-eq v3, v4, :cond_59

    .line 494
    :try_start_44
    aget-object v3, v1, v2

    .line 495
    .local v3, "className":Ljava/lang/String;
    invoke-static {v3, p0}, LsdkInterface/SdkInterface;->GetClass(Ljava/lang/String;Lorg/json/JSONObject;)LsdkInterface/SDKBase;

    move-result-object v4

    .line 497
    .local v4, "ins":LsdkInterface/SDKBase;
    sget-object v5, LsdkInterface/SdkInterface;->adSDKList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_4f} :catch_51

    .line 501
    nop

    .end local v3    # "className":Ljava/lang/String;
    .end local v4    # "ins":LsdkInterface/SDKBase;
    goto :goto_59

    .line 499
    :catch_51
    move-exception v3

    .line 500
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, LsdkInterface/SdkInterface;->SendError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 488
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_59
    :goto_59
    add-int/lit8 v2, v2, 0x1

    goto :goto_37

    .line 504
    .end local v2    # "i":I
    :cond_5c
    return-void
.end method

.method static InitActResultRequest()V
    .registers 2

    .line 308
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v1, LsdkInterface/SdkInterface$1StartThread;

    invoke-direct {v1}, LsdkInterface/SdkInterface$1StartThread;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 309
    return-void
.end method

.method static InitLog(Lorg/json/JSONObject;)V
    .registers 7
    .param p0, "json"    # Lorg/json/JSONObject;

    .line 559
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, LsdkInterface/SdkInterface;->logList:Ljava/util/ArrayList;

    .line 561
    sget-object v0, LsdkInterface/SdkInterface;->SdkManifest:Ljava/util/Properties;

    const-string v1, "Log"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 562
    .local v0, "logClassNameConfig":Ljava/lang/String;
    const-string v1, "\\|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 564
    .local v1, "logClassNameList":[Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Log Init ->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, LsdkInterface/SdkInterface;->SendLog(Ljava/lang/String;)V

    .line 566
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2c
    array-length v3, v1

    if-ge v2, v3, :cond_51

    .line 568
    aget-object v3, v1, v2

    if-eqz v3, :cond_4e

    aget-object v3, v1, v2

    const-string v4, ""

    if-eq v3, v4, :cond_4e

    .line 572
    :try_start_39
    aget-object v3, v1, v2

    .line 573
    .local v3, "className":Ljava/lang/String;
    invoke-static {v3, p0}, LsdkInterface/SdkInterface;->GetClass(Ljava/lang/String;Lorg/json/JSONObject;)LsdkInterface/SDKBase;

    move-result-object v4

    .line 575
    .local v4, "ins":LsdkInterface/SDKBase;
    sget-object v5, LsdkInterface/SdkInterface;->logList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_44} :catch_46

    .line 578
    nop

    .end local v3    # "className":Ljava/lang/String;
    .end local v4    # "ins":LsdkInterface/SDKBase;
    goto :goto_4e

    .line 576
    :catch_46
    move-exception v3

    .line 577
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, LsdkInterface/SdkInterface;->SendError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 566
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_4e
    :goto_4e
    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    .line 581
    .end local v2    # "i":I
    :cond_51
    return-void
.end method

.method static InitLoginSDK(Lorg/json/JSONObject;)V
    .registers 7
    .param p0, "json"    # Lorg/json/JSONObject;

    .line 318
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, LsdkInterface/SdkInterface;->loginSDKList:Ljava/util/ArrayList;

    .line 320
    sget-object v0, LsdkInterface/SdkInterface;->SdkManifest:Ljava/util/Properties;

    const-string v1, "Login"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 321
    .local v0, "loginClassNameConfig":Ljava/lang/String;
    const-string v1, "\\|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 323
    .local v1, "loginClassNameList":[Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Login Init ->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, LsdkInterface/SdkInterface;->SendLog(Ljava/lang/String;)V

    .line 325
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2c
    array-length v3, v1

    if-ge v2, v3, :cond_51

    .line 327
    aget-object v3, v1, v2

    if-eqz v3, :cond_4e

    aget-object v3, v1, v2

    const-string v4, ""

    if-eq v3, v4, :cond_4e

    .line 331
    :try_start_39
    aget-object v3, v1, v2

    .line 332
    .local v3, "className":Ljava/lang/String;
    invoke-static {v3, p0}, LsdkInterface/SdkInterface;->GetClass(Ljava/lang/String;Lorg/json/JSONObject;)LsdkInterface/SDKBase;

    move-result-object v4

    .line 334
    .local v4, "ins":LsdkInterface/SDKBase;
    sget-object v5, LsdkInterface/SdkInterface;->loginSDKList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_44} :catch_46

    .line 337
    nop

    .end local v3    # "className":Ljava/lang/String;
    .end local v4    # "ins":LsdkInterface/SDKBase;
    goto :goto_4e

    .line 335
    :catch_46
    move-exception v3

    .line 336
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, LsdkInterface/SdkInterface;->SendError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 325
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_4e
    :goto_4e
    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    .line 340
    .end local v2    # "i":I
    :cond_51
    return-void
.end method

.method static InitOther(Lorg/json/JSONObject;)V
    .registers 7
    .param p0, "json"    # Lorg/json/JSONObject;

    .line 1181
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, LsdkInterface/SdkInterface;->otherSDKList:Ljava/util/ArrayList;

    .line 1183
    sget-object v0, LsdkInterface/SdkInterface;->SdkManifest:Ljava/util/Properties;

    const-string v1, "Other"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1184
    .local v0, "otherClassNameConfig":Ljava/lang/String;
    const-string v1, "\\|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1186
    .local v1, "otherClassNameList":[Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Other Init ->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, LsdkInterface/SdkInterface;->SendLog(Ljava/lang/String;)V

    .line 1188
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2c
    array-length v3, v1

    if-ge v2, v3, :cond_51

    .line 1191
    aget-object v3, v1, v2

    if-eqz v3, :cond_4e

    aget-object v3, v1, v2

    const-string v4, ""

    if-eq v3, v4, :cond_4e

    .line 1194
    :try_start_39
    aget-object v3, v1, v2

    .line 1195
    .local v3, "className":Ljava/lang/String;
    invoke-static {v3, p0}, LsdkInterface/SdkInterface;->GetClass(Ljava/lang/String;Lorg/json/JSONObject;)LsdkInterface/SDKBase;

    move-result-object v4

    .line 1197
    .local v4, "ins":LsdkInterface/SDKBase;
    sget-object v5, LsdkInterface/SdkInterface;->otherSDKList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_44} :catch_46

    .line 1200
    nop

    .end local v3    # "className":Ljava/lang/String;
    .end local v4    # "ins":LsdkInterface/SDKBase;
    goto :goto_4e

    .line 1198
    :catch_46
    move-exception v3

    .line 1199
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, LsdkInterface/SdkInterface;->SendError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1188
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_4e
    :goto_4e
    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    .line 1203
    .end local v2    # "i":I
    :cond_51
    return-void
.end method

.method static InitPay(Lorg/json/JSONObject;)V
    .registers 7
    .param p0, "json"    # Lorg/json/JSONObject;

    .line 380
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, LsdkInterface/SdkInterface;->paySDKList:Ljava/util/ArrayList;

    .line 382
    sget-object v0, LsdkInterface/SdkInterface;->SdkManifest:Ljava/util/Properties;

    const-string v1, "Pay"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 383
    .local v0, "payClassNameConfig":Ljava/lang/String;
    const-string v1, "\\|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 385
    .local v1, "payClassNameList":[Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Pay Init ->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, LsdkInterface/SdkInterface;->SendLog(Ljava/lang/String;)V

    .line 387
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2c
    array-length v3, v1

    if-ge v2, v3, :cond_51

    .line 389
    aget-object v3, v1, v2

    if-eqz v3, :cond_4e

    aget-object v3, v1, v2

    const-string v4, ""

    if-eq v3, v4, :cond_4e

    .line 393
    :try_start_39
    aget-object v3, v1, v2

    .line 394
    .local v3, "className":Ljava/lang/String;
    invoke-static {v3, p0}, LsdkInterface/SdkInterface;->GetClass(Ljava/lang/String;Lorg/json/JSONObject;)LsdkInterface/SDKBase;

    move-result-object v4

    .line 396
    .local v4, "ins":LsdkInterface/SDKBase;
    sget-object v5, LsdkInterface/SdkInterface;->paySDKList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_44} :catch_46

    .line 399
    nop

    .end local v3    # "className":Ljava/lang/String;
    .end local v4    # "ins":LsdkInterface/SDKBase;
    goto :goto_4e

    .line 397
    :catch_46
    move-exception v3

    .line 398
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, LsdkInterface/SdkInterface;->SendError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 387
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_4e
    :goto_4e
    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    .line 402
    .end local v2    # "i":I
    :cond_51
    return-void
.end method

.method static InitRealName(Lorg/json/JSONObject;)V
    .registers 7
    .param p0, "json"    # Lorg/json/JSONObject;

    .line 1207
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, LsdkInterface/SdkInterface;->realNameSDKList:Ljava/util/ArrayList;

    .line 1209
    sget-object v0, LsdkInterface/SdkInterface;->SdkManifest:Ljava/util/Properties;

    const-string v1, "RealName"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1210
    .local v0, "realNameeClassNameConfig":Ljava/lang/String;
    const-string v1, "\\|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1212
    .local v1, "realNameClassNameList":[Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RealName Init ->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, LsdkInterface/SdkInterface;->SendLog(Ljava/lang/String;)V

    .line 1214
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2c
    array-length v3, v1

    if-ge v2, v3, :cond_51

    .line 1217
    aget-object v3, v1, v2

    if-eqz v3, :cond_4e

    aget-object v3, v1, v2

    const-string v4, ""

    if-eq v3, v4, :cond_4e

    .line 1220
    :try_start_39
    aget-object v3, v1, v2

    .line 1221
    .local v3, "className":Ljava/lang/String;
    invoke-static {v3, p0}, LsdkInterface/SdkInterface;->GetClass(Ljava/lang/String;Lorg/json/JSONObject;)LsdkInterface/SDKBase;

    move-result-object v4

    .line 1223
    .local v4, "ins":LsdkInterface/SDKBase;
    sget-object v5, LsdkInterface/SdkInterface;->realNameSDKList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_44} :catch_46

    .line 1226
    nop

    .end local v3    # "className":Ljava/lang/String;
    .end local v4    # "ins":LsdkInterface/SDKBase;
    goto :goto_4e

    .line 1224
    :catch_46
    move-exception v3

    .line 1225
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, LsdkInterface/SdkInterface;->SendError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1214
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_4e
    :goto_4e
    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    .line 1229
    .end local v2    # "i":I
    :cond_51
    return-void
.end method

.method public static InitSdkManifestProperty()V
    .registers 2

    .line 1307
    sget-object v0, LsdkInterface/SdkInterface;->SdkManifest:Ljava/util/Properties;

    if-nez v0, :cond_23

    .line 1310
    :try_start_4
    invoke-static {}, LsdkInterface/SdkInterface;->GetContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "SdkManifest"

    invoke-static {v0, v1}, LsdkInterface/tool/PropertieTool;->getProperties(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Properties;

    move-result-object v0

    sput-object v0, LsdkInterface/SdkInterface;->SdkManifest:Ljava/util/Properties;

    .line 1311
    invoke-static {}, LsdkInterface/SdkInterface;->GetIsLog()Z

    move-result v0

    sput-boolean v0, LsdkInterface/SdkInterface;->isLog:Z

    .line 1312
    invoke-static {}, LsdkInterface/SdkInterface;->GetIsMultiDex()Z

    move-result v0

    sput-boolean v0, LsdkInterface/SdkInterface;->isMultiDex:Z
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_1c} :catch_1d

    .line 1315
    goto :goto_23

    .line 1313
    :catch_1d
    move-exception v0

    .line 1314
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "InitSdkManifestProperty error"

    invoke-static {v1, v0}, LsdkInterface/SdkInterface;->SendError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1317
    .end local v0    # "e":Ljava/io/IOException;
    :cond_23
    :goto_23
    return-void
.end method

.method public static InitSdkManifestProperty(Landroid/content/Context;)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 1292
    sget-object v0, LsdkInterface/SdkInterface;->SdkManifest:Ljava/util/Properties;

    if-nez v0, :cond_1f

    .line 1295
    :try_start_4
    const-string v0, "SdkManifest"

    invoke-static {p0, v0}, LsdkInterface/tool/PropertieTool;->getProperties(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Properties;

    move-result-object v0

    sput-object v0, LsdkInterface/SdkInterface;->SdkManifest:Ljava/util/Properties;

    .line 1296
    invoke-static {}, LsdkInterface/SdkInterface;->GetIsLog()Z

    move-result v0

    sput-boolean v0, LsdkInterface/SdkInterface;->isLog:Z

    .line 1297
    invoke-static {}, LsdkInterface/SdkInterface;->GetIsMultiDex()Z

    move-result v0

    sput-boolean v0, LsdkInterface/SdkInterface;->isMultiDex:Z
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_18} :catch_19

    .line 1301
    goto :goto_1f

    .line 1299
    :catch_19
    move-exception v0

    .line 1300
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "InitSdkManifestProperty error"

    invoke-static {v1, v0}, LsdkInterface/SdkInterface;->SendError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1303
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1f
    :goto_1f
    return-void
.end method

.method static InitShare(Lorg/json/JSONObject;)V
    .registers 7
    .param p0, "json"    # Lorg/json/JSONObject;

    .line 784
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, LsdkInterface/SdkInterface;->shareSDKList:Ljava/util/ArrayList;

    .line 786
    sget-object v0, LsdkInterface/SdkInterface;->SdkManifest:Ljava/util/Properties;

    const-string v1, "Share"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 787
    .local v0, "shareClassNameConfig":Ljava/lang/String;
    const-string v1, "\\|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 789
    .local v1, "shareClassNameList":[Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Share init ->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, LsdkInterface/SdkInterface;->SendLog(Ljava/lang/String;)V

    .line 791
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2c
    array-length v3, v1

    if-ge v2, v3, :cond_51

    .line 794
    aget-object v3, v1, v2

    if-eqz v3, :cond_4e

    aget-object v3, v1, v2

    const-string v4, ""

    if-eq v3, v4, :cond_4e

    .line 797
    :try_start_39
    aget-object v3, v1, v2

    .line 798
    .local v3, "className":Ljava/lang/String;
    invoke-static {v3, p0}, LsdkInterface/SdkInterface;->GetClass(Ljava/lang/String;Lorg/json/JSONObject;)LsdkInterface/SDKBase;

    move-result-object v4

    .line 800
    .local v4, "ins":LsdkInterface/SDKBase;
    sget-object v5, LsdkInterface/SdkInterface;->shareSDKList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_44} :catch_46

    .line 803
    nop

    .end local v3    # "className":Ljava/lang/String;
    .end local v4    # "ins":LsdkInterface/SDKBase;
    goto :goto_4e

    .line 801
    :catch_46
    move-exception v3

    .line 802
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, LsdkInterface/SdkInterface;->SendError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 791
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_4e
    :goto_4e
    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    .line 806
    .end local v2    # "i":I
    :cond_51
    return-void
.end method

.method public static IsDebug()Z
    .registers 1

    .line 242
    sget-boolean v0, LsdkInterface/SdkInterface;->isLog:Z

    return v0
.end method

.method public static IsMultiDex()Z
    .registers 1

    .line 246
    sget-boolean v0, LsdkInterface/SdkInterface;->isMultiDex:Z

    return v0
.end method

.method static IsSDKExist(Ljava/lang/String;)Z
    .registers 4
    .param p0, "sdkName"    # Ljava/lang/String;

    .line 1281
    sget-object v0, LsdkInterface/SdkInterface;->allClass:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LsdkInterface/SDKBase;

    .line 1282
    .local v1, "temp":LsdkInterface/SDKBase;
    iget-object v2, v1, LsdkInterface/SDKBase;->SDKName:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 1284
    const/4 v0, 0x1

    return v0

    .line 1286
    .end local v1    # "temp":LsdkInterface/SDKBase;
    :cond_20
    goto :goto_a

    .line 1287
    :cond_21
    const/4 v0, 0x0

    return v0
.end method

.method static Log(Lorg/json/JSONObject;)V
    .registers 3
    .param p0, "json"    # Lorg/json/JSONObject;

    .line 585
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v1, LsdkInterface/SdkInterface;->logList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 586
    sget-object v1, LsdkInterface/SdkInterface;->logList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LsdkInterface/ILog;

    .line 587
    .local v1, "log":LsdkInterface/ILog;
    invoke-static {v1, p0}, LsdkInterface/SdkInterface;->LogLogic(LsdkInterface/ILog;Lorg/json/JSONObject;)V

    .line 585
    .end local v1    # "log":LsdkInterface/ILog;
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 589
    .end local v0    # "i":I
    :cond_17
    return-void
.end method

.method static LogLogic(LsdkInterface/ILog;Lorg/json/JSONObject;)V
    .registers 5
    .param p0, "log"    # LsdkInterface/ILog;
    .param p1, "json"    # Lorg/json/JSONObject;

    .line 594
    :try_start_0
    const-string v0, "FunctionName"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 596
    .local v0, "logFunction":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_d6

    :cond_d
    goto/16 :goto_75

    :sswitch_f
    const-string v1, "LogRewardVirtualCurrency"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    const/4 v1, 0x7

    goto :goto_76

    :sswitch_19
    const-string v1, "LogLogin"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    const/4 v1, 0x0

    goto :goto_76

    :sswitch_23
    const-string v1, "LogEvent"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    const/4 v1, 0x2

    goto :goto_76

    :sswitch_2d
    const-string v1, "LogError"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    const/4 v1, 0x5

    goto :goto_76

    :sswitch_37
    const-string v1, "LogLoginOut"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    const/4 v1, 0x1

    goto :goto_76

    :sswitch_41
    const-string v1, "LogPurchaseVirtualCurrency"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    const/16 v1, 0x8

    goto :goto_76

    :sswitch_4c
    const-string v1, "LogAD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    const/4 v1, 0x3

    goto :goto_76

    :sswitch_56
    const-string v1, "LogUseItem"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    const/16 v1, 0x9

    goto :goto_76

    :sswitch_61
    const-string v1, "LogPaySuccess"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    const/4 v1, 0x6

    goto :goto_76

    :sswitch_6b
    const-string v1, "LogPay"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    const/4 v1, 0x4

    goto :goto_76

    :goto_75
    const/4 v1, -0x1

    :goto_76
    packed-switch v1, :pswitch_data_100

    .line 628
    new-instance v1, Ljava/lang/StringBuilder;

    goto :goto_a4

    .line 625
    :pswitch_7c
    invoke-interface {p0, p1}, LsdkInterface/ILog;->UseItem(Lorg/json/JSONObject;)V

    .line 626
    goto :goto_b9

    .line 622
    :pswitch_80
    invoke-interface {p0, p1}, LsdkInterface/ILog;->PurchaseVirtualCurrency(Lorg/json/JSONObject;)V

    .line 623
    goto :goto_b9

    .line 619
    :pswitch_84
    invoke-interface {p0, p1}, LsdkInterface/ILog;->RewardVirtualCurrency(Lorg/json/JSONObject;)V

    .line 620
    goto :goto_b9

    .line 616
    :pswitch_88
    invoke-interface {p0, p1}, LsdkInterface/ILog;->LogPaySuccess(Lorg/json/JSONObject;)V

    .line 617
    goto :goto_b9

    .line 613
    :pswitch_8c
    invoke-interface {p0, p1}, LsdkInterface/ILog;->LogError(Lorg/json/JSONObject;)V

    .line 614
    goto :goto_b9

    .line 610
    :pswitch_90
    invoke-interface {p0, p1}, LsdkInterface/ILog;->LogPay(Lorg/json/JSONObject;)V

    .line 611
    goto :goto_b9

    .line 607
    :pswitch_94
    invoke-interface {p0, p1}, LsdkInterface/ILog;->LogAD(Lorg/json/JSONObject;)V

    .line 608
    goto :goto_b9

    .line 604
    :pswitch_98
    invoke-interface {p0, p1}, LsdkInterface/ILog;->OnEvent(Lorg/json/JSONObject;)V

    .line 605
    goto :goto_b9

    .line 601
    :pswitch_9c
    invoke-interface {p0, p1}, LsdkInterface/ILog;->LoginOut(Lorg/json/JSONObject;)V

    .line 602
    goto :goto_b9

    .line 598
    :pswitch_a0
    invoke-interface {p0, p1}, LsdkInterface/ILog;->Login(Lorg/json/JSONObject;)V

    .line 599
    goto :goto_b9

    .line 628
    :goto_a4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Don\'t support Log_FunctionName "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, LsdkInterface/SdkInterface;->SendError(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_b9
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_b9} :catch_ba

    .line 633
    .end local v0    # "logFunction":Ljava/lang/String;
    :goto_b9
    goto :goto_d5

    .line 631
    :catch_ba
    move-exception v0

    .line 632
    .local v0, "e":Lorg/json/JSONException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Log Exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, LsdkInterface/SdkInterface;->SendError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 634
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_d5
    return-void

    :sswitch_data_d6
    .sparse-switch
        -0x7803751c -> :sswitch_6b
        -0x60d1fb81 -> :sswitch_61
        -0xa8c0a8a -> :sswitch_56
        0x462fa47 -> :sswitch_4c
        0x35a58d37 -> :sswitch_41
        0x43b0ce69 -> :sswitch_37
        0x7a720d44 -> :sswitch_2d
        0x7a73add6 -> :sswitch_23
        0x7ad32aa5 -> :sswitch_19
        0x7b9bc049 -> :sswitch_f
    .end sparse-switch

    :pswitch_data_100
    .packed-switch 0x0
        :pswitch_a0
        :pswitch_9c
        :pswitch_98
        :pswitch_94
        :pswitch_90
        :pswitch_8c
        :pswitch_88
        :pswitch_84
        :pswitch_80
        :pswitch_7c
    .end packed-switch
.end method

.method public static Login(Lorg/json/JSONObject;)V
    .registers 6
    .param p0, "json"    # Lorg/json/JSONObject;

    .line 346
    :try_start_0
    sget-object v0, LsdkInterface/SdkInterface;->loginSDKList:Ljava/util/ArrayList;

    invoke-static {p0, v0}, LsdkInterface/SdkInterface;->GetSDK(Lorg/json/JSONObject;Ljava/util/ArrayList;)LsdkInterface/SDKBase;

    move-result-object v0

    check-cast v0, LsdkInterface/ILogin;

    .line 347
    .local v0, "login":LsdkInterface/ILogin;
    const-string v1, "FunctionName"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 349
    .local v1, "functionName":Ljava/lang/String;
    const/4 v2, 0x0

    if-eqz v0, :cond_54

    .line 351
    const-string v3, "Login"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 353
    invoke-interface {v0, p0}, LsdkInterface/ILogin;->Login(Lorg/json/JSONObject;)V

    goto :goto_6e

    .line 355
    :cond_1d
    const-string v3, "LoginOut"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 357
    invoke-interface {v0, p0}, LsdkInterface/ILogin;->LoginOut(Lorg/json/JSONObject;)V

    goto :goto_6e

    .line 361
    :cond_29
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not find functionName  ->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "< >"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "<"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, LsdkInterface/SdkInterface;->SendError(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_6e

    .line 366
    :cond_54
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not find Login Class -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, LsdkInterface/SdkInterface;->SendError(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6e} :catch_6f

    .line 372
    .end local v0    # "login":LsdkInterface/ILogin;
    .end local v1    # "functionName":Ljava/lang/String;
    :goto_6e
    goto :goto_77

    .line 369
    :catch_6f
    move-exception v0

    .line 371
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, LsdkInterface/SdkInterface;->SendError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 373
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_77
    return-void
.end method

.method public static OnApplicationCreate()V
    .registers 3

    .line 897
    const-string v0, "SDKInterface OnApplicationCreate "

    invoke-static {v0}, LsdkInterface/SdkInterface;->SendLog(Ljava/lang/String;)V

    .line 899
    :try_start_5
    sget-object v0, LsdkInterface/SdkInterface;->allClass:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 901
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;LsdkInterface/SDKBase;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LsdkInterface/SDKBase;

    invoke-virtual {v2}, LsdkInterface/SDKBase;->OnApplicationCreate()V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_24} :catch_26

    .line 902
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;LsdkInterface/SDKBase;>;"
    goto :goto_f

    .line 907
    :cond_25
    goto :goto_41

    .line 904
    :catch_26
    move-exception v0

    .line 906
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnApplicationCreate Error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, LsdkInterface/SdkInterface;->SendError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 908
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_41
    return-void
.end method

.method public static OnCreate(Landroid/os/Bundle;)V
    .registers 4
    .param p0, "bundle"    # Landroid/os/Bundle;

    .line 955
    :try_start_0
    sget-object v0, LsdkInterface/SdkInterface;->allClass:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 957
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;LsdkInterface/SDKBase;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LsdkInterface/SDKBase;

    invoke-virtual {v2}, LsdkInterface/SDKBase;->OnCreate()V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1f} :catch_21

    .line 958
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;LsdkInterface/SDKBase;>;"
    goto :goto_a

    .line 963
    :cond_20
    goto :goto_3c

    .line 960
    :catch_21
    move-exception v0

    .line 962
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnCreate Error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, LsdkInterface/SdkInterface;->SendError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 964
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3c
    return-void
.end method

.method public static OnDestroy()V
    .registers 3

    .line 998
    const-string v0, "SDKInterBase OnDestroy "

    invoke-static {v0}, LsdkInterface/SdkInterface;->SendLog(Ljava/lang/String;)V

    .line 1000
    :try_start_5
    sget-object v0, LsdkInterface/SdkInterface;->allClass:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1002
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;LsdkInterface/SDKBase;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LsdkInterface/SDKBase;

    invoke-virtual {v2}, LsdkInterface/SDKBase;->OnDestroy()V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_24} :catch_26

    .line 1003
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;LsdkInterface/SDKBase;>;"
    goto :goto_f

    .line 1008
    :cond_25
    goto :goto_41

    .line 1005
    :catch_26
    move-exception v0

    .line 1007
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Other Error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, LsdkInterface/SdkInterface;->SendError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1009
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_41
    return-void
.end method

.method public static OnNewIntent(Landroid/content/Intent;)V
    .registers 4
    .param p0, "intent"    # Landroid/content/Intent;

    .line 1073
    const-string v0, "SDKInterBase OnNewIntent "

    invoke-static {v0}, LsdkInterface/SdkInterface;->SendLog(Ljava/lang/String;)V

    .line 1075
    :try_start_5
    sget-object v0, LsdkInterface/SdkInterface;->allClass:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1077
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;LsdkInterface/SDKBase;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LsdkInterface/SDKBase;

    invoke-virtual {v2, p0}, LsdkInterface/SDKBase;->OnNewIntent(Landroid/content/Intent;)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_24} :catch_26

    .line 1078
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;LsdkInterface/SDKBase;>;"
    goto :goto_f

    .line 1083
    :cond_25
    goto :goto_41

    .line 1080
    :catch_26
    move-exception v0

    .line 1082
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnNewIntent Error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, LsdkInterface/SdkInterface;->SendError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1084
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_41
    return-void
.end method

.method public static OnPause()V
    .registers 3

    .line 1013
    const-string v0, "SDKInterBase OnPause "

    invoke-static {v0}, LsdkInterface/SdkInterface;->SendLog(Ljava/lang/String;)V

    .line 1015
    :try_start_5
    sget-object v0, LsdkInterface/SdkInterface;->allClass:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1017
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;LsdkInterface/SDKBase;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LsdkInterface/SDKBase;

    invoke-virtual {v2}, LsdkInterface/SDKBase;->OnPause()V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_24} :catch_26

    .line 1018
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;LsdkInterface/SDKBase;>;"
    goto :goto_f

    .line 1023
    :cond_25
    goto :goto_41

    .line 1020
    :catch_26
    move-exception v0

    .line 1022
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnPause Error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, LsdkInterface/SdkInterface;->SendError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1024
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_41
    return-void
.end method

.method public static OnRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 6
    .param p0, "requestCode"    # I
    .param p1, "permissions"    # [Ljava/lang/String;
    .param p2, "grantResults"    # [I

    .line 1058
    const-string v0, "SDKInterBase OnRequestPermissionsResult "

    invoke-static {v0}, LsdkInterface/SdkInterface;->SendLog(Ljava/lang/String;)V

    .line 1060
    :try_start_5
    sget-object v0, LsdkInterface/SdkInterface;->allClass:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1062
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;LsdkInterface/SDKBase;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LsdkInterface/SDKBase;

    invoke-virtual {v2, p0, p1, p2}, LsdkInterface/SDKBase;->OnRequestPermissionsResult(I[Ljava/lang/String;[I)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_24} :catch_26

    .line 1063
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;LsdkInterface/SDKBase;>;"
    goto :goto_f

    .line 1068
    :cond_25
    goto :goto_41

    .line 1065
    :catch_26
    move-exception v0

    .line 1067
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnRequestPermissionsResult Error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, LsdkInterface/SdkInterface;->SendError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1069
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_41
    return-void
.end method

.method public static OnRestart()V
    .registers 3

    .line 983
    const-string v0, "SDKInterBase OnStart "

    invoke-static {v0}, LsdkInterface/SdkInterface;->SendLog(Ljava/lang/String;)V

    .line 985
    :try_start_5
    sget-object v0, LsdkInterface/SdkInterface;->allClass:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 987
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;LsdkInterface/SDKBase;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LsdkInterface/SDKBase;

    invoke-virtual {v2}, LsdkInterface/SDKBase;->OnRestart()V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_24} :catch_26

    .line 988
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;LsdkInterface/SDKBase;>;"
    goto :goto_f

    .line 993
    :cond_25
    goto :goto_41

    .line 990
    :catch_26
    move-exception v0

    .line 992
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Other Error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, LsdkInterface/SdkInterface;->SendError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 994
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_41
    return-void
.end method

.method public static OnResume()V
    .registers 3

    .line 1043
    const-string v0, "SDKInterBase OnResume "

    invoke-static {v0}, LsdkInterface/SdkInterface;->SendLog(Ljava/lang/String;)V

    .line 1045
    :try_start_5
    sget-object v0, LsdkInterface/SdkInterface;->allClass:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1047
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;LsdkInterface/SDKBase;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LsdkInterface/SDKBase;

    invoke-virtual {v2}, LsdkInterface/SDKBase;->OnResume()V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_24} :catch_26

    .line 1048
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;LsdkInterface/SDKBase;>;"
    goto :goto_f

    .line 1053
    :cond_25
    goto :goto_41

    .line 1050
    :catch_26
    move-exception v0

    .line 1052
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnResume Error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, LsdkInterface/SdkInterface;->SendError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1054
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_41
    return-void
.end method

.method public static OnStart()V
    .registers 3

    .line 968
    const-string v0, "SDKInterBase OnStart "

    invoke-static {v0}, LsdkInterface/SdkInterface;->SendLog(Ljava/lang/String;)V

    .line 970
    :try_start_5
    sget-object v0, LsdkInterface/SdkInterface;->allClass:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 972
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;LsdkInterface/SDKBase;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LsdkInterface/SDKBase;

    invoke-virtual {v2}, LsdkInterface/SDKBase;->OnStart()V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_24} :catch_26

    .line 973
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;LsdkInterface/SDKBase;>;"
    goto :goto_f

    .line 978
    :cond_25
    goto :goto_41

    .line 975
    :catch_26
    move-exception v0

    .line 977
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Other Error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, LsdkInterface/SdkInterface;->SendError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 979
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_41
    return-void
.end method

.method public static OnStop()V
    .registers 3

    .line 1028
    const-string v0, "SDKInterBase OnStop "

    invoke-static {v0}, LsdkInterface/SdkInterface;->SendLog(Ljava/lang/String;)V

    .line 1030
    :try_start_5
    sget-object v0, LsdkInterface/SdkInterface;->allClass:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1032
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;LsdkInterface/SDKBase;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LsdkInterface/SDKBase;

    invoke-virtual {v2}, LsdkInterface/SDKBase;->OnStop()V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_24} :catch_26

    .line 1033
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;LsdkInterface/SDKBase;>;"
    goto :goto_f

    .line 1038
    :cond_25
    goto :goto_41

    .line 1035
    :catch_26
    move-exception v0

    .line 1037
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnStop Error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, LsdkInterface/SdkInterface;->SendError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1039
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_41
    return-void
.end method

.method static Other(Lorg/json/JSONObject;)V
    .registers 9
    .param p0, "json"    # Lorg/json/JSONObject;

    .line 1233
    const-string v0, "SDKName"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SDKInterBase Other "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LsdkInterface/SdkInterface;->SendLog(Ljava/lang/String;)V

    .line 1235
    :try_start_1c
    const-string v1, "FunctionName"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1236
    .local v1, "functionName":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1238
    .local v2, "sdkName":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 1240
    sget-object v0, LsdkInterface/SdkInterface;->otherSDKList:Ljava/util/ArrayList;

    invoke-static {p0, v0}, LsdkInterface/SdkInterface;->GetSDK(Lorg/json/JSONObject;Ljava/util/ArrayList;)LsdkInterface/SDKBase;

    move-result-object v0

    check-cast v0, LsdkInterface/IOther;

    .line 1241
    .local v0, "other":LsdkInterface/IOther;
    invoke-interface {v0, p0}, LsdkInterface/IOther;->Other(Lorg/json/JSONObject;)V

    .line 1242
    .end local v0    # "other":LsdkInterface/IOther;
    goto :goto_98

    .line 1245
    :cond_38
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_39
    sget-object v3, LsdkInterface/SdkInterface;->otherSDKList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_98

    .line 1246
    sget-object v3, LsdkInterface/SdkInterface;->otherSDKList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LsdkInterface/IOther;

    .line 1247
    .local v3, "other":LsdkInterface/IOther;
    invoke-interface {v3}, LsdkInterface/IOther;->GetFunctionName()[Ljava/lang/String;

    move-result-object v4

    .line 1248
    .local v4, "fs":[Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_4e
    array-length v6, v4

    if-ge v5, v6, :cond_95

    .line 1250
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "=> fs[] "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v4, v5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ->"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v4, v5

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, LsdkInterface/SdkInterface;->SendLog(Ljava/lang/String;)V

    .line 1252
    aget-object v6, v4, v5

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_92

    .line 1254
    invoke-interface {v3, p0}, LsdkInterface/IOther;->Other(Lorg/json/JSONObject;)V
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_92} :catch_99

    .line 1248
    :cond_92
    add-int/lit8 v5, v5, 0x1

    goto :goto_4e

    .line 1245
    .end local v3    # "other":LsdkInterface/IOther;
    .end local v4    # "fs":[Ljava/lang/String;
    .end local v5    # "j":I
    :cond_95
    add-int/lit8 v0, v0, 0x1

    goto :goto_39

    .line 1262
    .end local v0    # "i":I
    .end local v1    # "functionName":Ljava/lang/String;
    .end local v2    # "sdkName":Ljava/lang/String;
    :cond_98
    :goto_98
    goto :goto_b4

    .line 1259
    :catch_99
    move-exception v0

    .line 1261
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Other Error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, LsdkInterface/SdkInterface;->SendError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1263
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_b4
    return-void
.end method

.method static Pay(Lorg/json/JSONObject;)V
    .registers 5
    .param p0, "json"    # Lorg/json/JSONObject;

    .line 407
    :try_start_0
    sget-object v0, LsdkInterface/SdkInterface;->paySDKList:Ljava/util/ArrayList;

    invoke-static {p0, v0}, LsdkInterface/SdkInterface;->GetSDK(Lorg/json/JSONObject;Ljava/util/ArrayList;)LsdkInterface/SDKBase;

    move-result-object v0

    check-cast v0, LsdkInterface/IPay;

    .line 408
    .local v0, "pay":LsdkInterface/IPay;
    if-eqz v0, :cond_7c

    .line 410
    const-string v1, "FunctionName"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 412
    .local v1, "function":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_b0

    :cond_17
    goto :goto_36

    :sswitch_18
    const-string v2, "ClearPurchase"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    const/4 v2, 0x1

    goto :goto_37

    :sswitch_22
    const-string v2, "GetGoodsInfo"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    const/4 v2, 0x0

    goto :goto_37

    :sswitch_2c
    const-string v2, "OnPay"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    const/4 v2, 0x2

    goto :goto_37

    :goto_36
    const/4 v2, -0x1

    :goto_37
    packed-switch v2, :pswitch_data_be

    .line 430
    new-instance v2, Ljava/lang/StringBuilder;

    goto :goto_5d

    .line 427
    :pswitch_3d
    invoke-interface {v0, p0}, LsdkInterface/IPay;->Pay(Lorg/json/JSONObject;)V

    .line 428
    goto :goto_7b

    .line 424
    :pswitch_41
    invoke-interface {v0, p0}, LsdkInterface/IPay;->ClearPurchase(Lorg/json/JSONObject;)V

    .line 425
    goto :goto_7b

    .line 416
    :pswitch_45
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_46
    sget-object v3, LsdkInterface/SdkInterface;->paySDKList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_5c

    .line 418
    sget-object v3, LsdkInterface/SdkInterface;->paySDKList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LsdkInterface/IPay;

    .line 419
    .local v3, "tmp":LsdkInterface/IPay;
    invoke-interface {v3, p0}, LsdkInterface/IPay;->GetGoodsInfo(Lorg/json/JSONObject;)V

    .line 416
    .end local v3    # "tmp":LsdkInterface/IPay;
    add-int/lit8 v2, v2, 0x1

    goto :goto_46

    .line 422
    .end local v2    # "i":I
    :cond_5c
    goto :goto_7b

    .line 430
    :goto_5d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dont find pay function "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " json "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, LsdkInterface/SdkInterface;->SendLog(Ljava/lang/String;)V

    .line 432
    .end local v1    # "function":Ljava/lang/String;
    :goto_7b
    goto :goto_92

    .line 434
    :cond_7c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dont find pay  json "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LsdkInterface/SdkInterface;->SendLog(Ljava/lang/String;)V
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_92} :catch_93

    .line 440
    .end local v0    # "pay":LsdkInterface/IPay;
    :goto_92
    goto :goto_ae

    .line 437
    :catch_93
    move-exception v0

    .line 439
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pay Error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, LsdkInterface/SdkInterface;->SendError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 441
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_ae
    return-void

    nop

    :sswitch_data_b0
    .sparse-switch
        0x48c7a29 -> :sswitch_2c
        0x5c539a8e -> :sswitch_22
        0x6b87b24e -> :sswitch_18
    .end sparse-switch

    :pswitch_data_be
    .packed-switch 0x0
        :pswitch_45
        :pswitch_41
        :pswitch_3d
    .end packed-switch
.end method

.method static RealName(Lorg/json/JSONObject;)V
    .registers 6
    .param p0, "json"    # Lorg/json/JSONObject;

    .line 643
    :try_start_0
    sget-object v0, LsdkInterface/SdkInterface;->realNameSDKList:Ljava/util/ArrayList;

    invoke-static {p0, v0}, LsdkInterface/SdkInterface;->GetSDK(Lorg/json/JSONObject;Ljava/util/ArrayList;)LsdkInterface/SDKBase;

    move-result-object v0

    check-cast v0, LsdkInterface/IRealName;

    .line 644
    .local v0, "realName":LsdkInterface/IRealName;
    const/4 v1, 0x0

    if-eqz v0, :cond_7b

    .line 646
    const-string v2, "FunctionName"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 647
    .local v2, "functionName":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_b8

    :cond_18
    goto :goto_4b

    :sswitch_19
    const-string v3, "OnLogout"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    const/4 v3, 0x4

    goto :goto_4c

    :sswitch_23
    const-string v3, "LogPayAmount"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    const/4 v3, 0x1

    goto :goto_4c

    :sswitch_2d
    const-string v3, "OnLogin"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    const/4 v3, 0x3

    goto :goto_4c

    :sswitch_37
    const-string v3, "CheckPayLimit"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    const/4 v3, 0x2

    goto :goto_4c

    :sswitch_41
    const-string v3, "StartRealNameAttestation"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    const/4 v3, 0x0

    goto :goto_4c

    :goto_4b
    const/4 v3, -0x1

    :goto_4c
    packed-switch v3, :pswitch_data_ce

    .line 661
    new-instance v3, Ljava/lang/StringBuilder;

    goto :goto_66

    .line 658
    :pswitch_52
    invoke-interface {v0}, LsdkInterface/IRealName;->OnLogout()V

    .line 659
    goto :goto_7a

    .line 656
    :pswitch_56
    invoke-interface {v0, p0}, LsdkInterface/IRealName;->OnLogin(Lorg/json/JSONObject;)V

    goto :goto_7a

    .line 654
    :pswitch_5a
    invoke-interface {v0, p0}, LsdkInterface/IRealName;->CheckPayLimit(Lorg/json/JSONObject;)V

    goto :goto_7a

    .line 652
    :pswitch_5e
    invoke-interface {v0, p0}, LsdkInterface/IRealName;->LogPayAmount(Lorg/json/JSONObject;)V

    goto :goto_7a

    .line 650
    :pswitch_62
    invoke-interface {v0}, LsdkInterface/IRealName;->StartRealNameAttestation()V

    goto :goto_7a

    .line 661
    :goto_66
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not find RealName Function "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, LsdkInterface/SdkInterface;->SendError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 663
    .end local v2    # "functionName":Ljava/lang/String;
    :goto_7a
    goto :goto_95

    .line 666
    :cond_7b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not find RealName Class -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, LsdkInterface/SdkInterface;->SendError(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_95
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_95} :catch_96

    .line 671
    .end local v0    # "realName":LsdkInterface/IRealName;
    :goto_95
    goto :goto_b7

    .line 669
    :catch_96
    move-exception v0

    .line 670
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SDKInterface RealName json:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " e:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, LsdkInterface/SdkInterface;->SendError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 672
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_b7
    return-void

    :sswitch_data_b8
    .sparse-switch
        -0x34fd61db -> :sswitch_41
        0x1026c4fb -> :sswitch_37
        0x13245caa -> :sswitch_2d
        0x49190c5c -> :sswitch_23
        0x51675069 -> :sswitch_19
    .end sparse-switch

    :pswitch_data_ce
    .packed-switch 0x0
        :pswitch_62
        :pswitch_5e
        :pswitch_5a
        :pswitch_56
        :pswitch_52
    .end packed-switch
.end method

.method static RealNameBool(Lorg/json/JSONObject;)Z
    .registers 9
    .param p0, "json"    # Lorg/json/JSONObject;

    .line 676
    const/4 v0, 0x1

    :try_start_1
    sget-object v1, LsdkInterface/SdkInterface;->realNameSDKList:Ljava/util/ArrayList;

    invoke-static {p0, v1}, LsdkInterface/SdkInterface;->GetSDK(Lorg/json/JSONObject;Ljava/util/ArrayList;)LsdkInterface/SDKBase;

    move-result-object v1

    check-cast v1, LsdkInterface/IRealName;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_9} :catch_9a

    .line 677
    .local v1, "realName":LsdkInterface/IRealName;
    const/4 v2, 0x0

    const-string v3, "IsAdult"

    const/4 v4, -0x1

    const-string v5, "FunctionName"

    const/4 v6, 0x0

    if-eqz v1, :cond_52

    .line 679
    :try_start_12
    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 680
    .local v5, "functionName":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v7

    packed-switch v7, :pswitch_data_bc

    :cond_1d
    goto :goto_25

    :pswitch_1e
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    const/4 v4, 0x0

    :goto_25
    packed-switch v4, :pswitch_data_c2

    .line 693
    new-instance v3, Ljava/lang/StringBuilder;

    goto :goto_3d

    .line 683
    :pswitch_2b
    invoke-interface {v1}, LsdkInterface/IRealName;->GetRealNameType()LsdkInterface/define/RealNameStatus;

    move-result-object v2

    sget-object v3, LsdkInterface/define/RealNameStatus;->NotNeed:LsdkInterface/define/RealNameStatus;

    invoke-virtual {v2, v3}, LsdkInterface/define/RealNameStatus;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 686
    return v0

    .line 690
    :cond_38
    invoke-interface {v1}, LsdkInterface/IRealName;->IsAdult()Z

    move-result v0

    return v0

    .line 693
    :goto_3d
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not find RealNameBool Function "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, LsdkInterface/SdkInterface;->SendError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 694
    return v0

    .line 699
    .end local v5    # "functionName":Ljava/lang/String;
    :cond_52
    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 700
    .restart local v5    # "functionName":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_c8

    :cond_5d
    goto :goto_6f

    :sswitch_5e
    const-string v3, "CheckPayLimit"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5d

    const/4 v4, 0x1

    goto :goto_6f

    :sswitch_68
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5d

    const/4 v4, 0x0

    :goto_6f
    packed-switch v4, :pswitch_data_d2

    .line 712
    new-instance v3, Ljava/lang/StringBuilder;

    goto :goto_81

    .line 707
    :pswitch_75
    const-string v2, "Not find RealNameBool Class+ RealName_FunctionName_CheckPayLimit is false"

    invoke-static {v2}, LsdkInterface/SdkInterface;->SendLog(Ljava/lang/String;)V

    .line 708
    return v6

    .line 703
    :pswitch_7b
    const-string v2, "Not find RealNameBool Class+ RealName_FunctionName_IsAdult is true"

    invoke-static {v2}, LsdkInterface/SdkInterface;->SendLog(Ljava/lang/String;)V

    .line 704
    return v0

    .line 712
    :goto_81
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not find RealNameBool Class -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, LsdkInterface/SdkInterface;->SendError(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_99
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_99} :catch_9a

    .line 713
    return v0

    .line 716
    .end local v1    # "realName":LsdkInterface/IRealName;
    .end local v5    # "functionName":Ljava/lang/String;
    :catch_9a
    move-exception v1

    .line 717
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SDKInterface RealNameBool json:  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " e:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, LsdkInterface/SdkInterface;->SendError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 718
    return v0

    :pswitch_data_bc
    .packed-switch -0x22589970
        :pswitch_1e
    .end packed-switch

    :pswitch_data_c2
    .packed-switch 0x0
        :pswitch_2b
    .end packed-switch

    :sswitch_data_c8
    .sparse-switch
        -0x22589970 -> :sswitch_68
        0x1026c4fb -> :sswitch_5e
    .end sparse-switch

    :pswitch_data_d2
    .packed-switch 0x0
        :pswitch_7b
        :pswitch_75
    .end packed-switch
.end method

.method static RealNameInt(Lorg/json/JSONObject;)I
    .registers 7
    .param p0, "json"    # Lorg/json/JSONObject;

    .line 752
    const/4 v0, -0x1

    :try_start_1
    sget-object v1, LsdkInterface/SdkInterface;->realNameSDKList:Ljava/util/ArrayList;

    invoke-static {p0, v1}, LsdkInterface/SdkInterface;->GetSDK(Lorg/json/JSONObject;Ljava/util/ArrayList;)LsdkInterface/SDKBase;

    move-result-object v1

    check-cast v1, LsdkInterface/IRealName;

    .line 753
    .local v1, "realName":LsdkInterface/IRealName;
    const/4 v2, 0x0

    if-eqz v1, :cond_45

    .line 755
    const-string v3, "FunctionName"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 756
    .local v3, "functionName":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    packed-switch v4, :pswitch_data_82

    :cond_19
    goto :goto_24

    :pswitch_1a
    const-string v4, "GetTodayOnlineTime"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    const/4 v4, 0x0

    goto :goto_25

    :goto_24
    const/4 v4, -0x1

    :goto_25
    packed-switch v4, :pswitch_data_88

    .line 762
    new-instance v4, Ljava/lang/StringBuilder;

    goto :goto_30

    .line 759
    :pswitch_2b
    invoke-interface {v1}, LsdkInterface/IRealName;->GetTodayOnlineTime()I

    move-result v0

    return v0

    .line 762
    :goto_30
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Not find RealNameInt Function "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, LsdkInterface/SdkInterface;->SendError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 763
    return v0

    .line 768
    .end local v3    # "functionName":Ljava/lang/String;
    :cond_45
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not find RealNameInt Class -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, LsdkInterface/SdkInterface;->SendError(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_5f} :catch_60

    .line 769
    return v0

    .line 772
    .end local v1    # "realName":LsdkInterface/IRealName;
    :catch_60
    move-exception v1

    .line 773
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SDKInterface RealNameInt json:  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " e:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, LsdkInterface/SdkInterface;->SendError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 774
    return v0

    :pswitch_data_82
    .packed-switch -0x32c23835
        :pswitch_1a
    .end packed-switch

    :pswitch_data_88
    .packed-switch 0x0
        :pswitch_2b
    .end packed-switch
.end method

.method static RealNameString(Lorg/json/JSONObject;)Ljava/lang/String;
    .registers 6
    .param p0, "json"    # Lorg/json/JSONObject;

    .line 724
    :try_start_0
    sget-object v0, LsdkInterface/SdkInterface;->realNameSDKList:Ljava/util/ArrayList;

    invoke-static {p0, v0}, LsdkInterface/SdkInterface;->GetSDK(Lorg/json/JSONObject;Ljava/util/ArrayList;)LsdkInterface/SDKBase;

    move-result-object v0

    check-cast v0, LsdkInterface/IRealName;

    .line 725
    .local v0, "realName":LsdkInterface/IRealName;
    const/4 v1, 0x0

    if-eqz v0, :cond_4e

    .line 727
    const-string v2, "FunctionName"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 728
    .local v2, "functionName":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    packed-switch v3, :pswitch_data_98

    :cond_18
    goto :goto_23

    :pswitch_19
    const-string v3, "GetRealNameType"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    const/4 v3, 0x0

    goto :goto_24

    :goto_23
    const/4 v3, -0x1

    :goto_24
    packed-switch v3, :pswitch_data_9e

    .line 734
    new-instance v3, Ljava/lang/StringBuilder;

    goto :goto_33

    .line 731
    :pswitch_2a
    invoke-interface {v0}, LsdkInterface/IRealName;->GetRealNameType()LsdkInterface/define/RealNameStatus;

    move-result-object v1

    invoke-virtual {v1}, LsdkInterface/define/RealNameStatus;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 734
    :goto_33
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not find RealNameString Function "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, LsdkInterface/SdkInterface;->SendError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 735
    sget-object v1, LsdkInterface/define/RealNameStatus;->NotNeed:LsdkInterface/define/RealNameStatus;

    invoke-virtual {v1}, LsdkInterface/define/RealNameStatus;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 740
    .end local v2    # "functionName":Ljava/lang/String;
    :cond_4e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not find RealNameString Class -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, LsdkInterface/SdkInterface;->SendError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 741
    sget-object v1, LsdkInterface/define/RealNameStatus;->NotNeed:LsdkInterface/define/RealNameStatus;

    invoke-virtual {v1}, LsdkInterface/define/RealNameStatus;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6e} :catch_6f

    return-object v1

    .line 744
    .end local v0    # "realName":LsdkInterface/IRealName;
    :catch_6f
    move-exception v0

    .line 745
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SDKInterface RealNameString json:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " e:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, LsdkInterface/SdkInterface;->SendError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 746
    sget-object v1, LsdkInterface/define/RealNameStatus;->NotNeed:LsdkInterface/define/RealNameStatus;

    invoke-virtual {v1}, LsdkInterface/define/RealNameStatus;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_98
    .packed-switch -0x20e23587
        :pswitch_19
    .end packed-switch

    :pswitch_data_9e
    .packed-switch 0x0
        :pswitch_2a
    .end packed-switch
.end method

.method public static SendError(Ljava/lang/String;)V
    .registers 7
    .param p0, "errorContent"    # Ljava/lang/String;

    .line 215
    const-string v0, "<-"

    const-string v1, "Unity"

    :try_start_4
    sget-boolean v2, LsdkInterface/SdkInterface;->isLog:Z

    if-eqz v2, :cond_22

    .line 217
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SendError ->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :cond_22
    sget-object v2, LsdkInterface/SdkInterface;->isCallBack:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 222
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 223
    .local v2, "jo":Lorg/json/JSONObject;
    const-string v3, "ModuleName"

    const-string v4, "Debug"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 224
    const-string v3, "FunctionName"

    const-string v4, "OnError"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 225
    const-string v3, "Content"

    invoke-virtual {v2, v3, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 227
    const-string v3, "CallBackObject"

    const-string v4, "OnSDKCallBack"

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4d} :catch_4e

    .line 237
    .end local v2    # "jo":Lorg/json/JSONObject;
    :cond_4d
    goto :goto_7f

    .line 231
    :catch_4e
    move-exception v2

    .line 233
    .local v2, "ex":Ljava/lang/Exception;
    sget-boolean v3, LsdkInterface/SdkInterface;->isLog:Z

    if-eqz v3, :cond_7f

    .line 235
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SendError Exception ->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, LsdkInterface/SdkInterface;->GetCallStrack(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    .end local v2    # "ex":Ljava/lang/Exception;
    :cond_7f
    :goto_7f
    return-void
.end method

.method public static SendError(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 4
    .param p0, "errorContent"    # Ljava/lang/String;
    .param p1, "e"    # Ljava/lang/Exception;

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, LsdkInterface/SdkInterface;->GetCallStrack(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LsdkInterface/SdkInterface;->SendError(Ljava/lang/String;)V

    .line 209
    return-void
.end method

.method public static SendLog(Ljava/lang/String;)V
    .registers 7
    .param p0, "LogContent"    # Ljava/lang/String;

    .line 251
    sget-boolean v0, LsdkInterface/SdkInterface;->isLog:Z

    if-eqz v0, :cond_6d

    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SendLog ->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Unity"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    :try_start_22
    sget-object v0, LsdkInterface/SdkInterface;->isCallBack:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 258
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 259
    .local v0, "jo":Lorg/json/JSONObject;
    const-string v3, "ModuleName"

    const-string v4, "Debug"

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 260
    const-string v3, "FunctionName"

    const-string v4, "OnLog"

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 261
    const-string v3, "Content"

    invoke-virtual {v0, v3, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 263
    const-string v3, "CallBackObject"

    const-string v4, "OnSDKCallBack"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_4d} :catch_4e

    .line 269
    .end local v0    # "jo":Lorg/json/JSONObject;
    :cond_4d
    goto :goto_6d

    .line 266
    :catch_4e
    move-exception v0

    .line 268
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SendLog Exception ->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_6d
    :goto_6d
    return-void
.end method

.method public static SendMessage(Ljava/lang/String;)V
    .registers 3
    .param p0, "content"    # Ljava/lang/String;

    .line 190
    sget-boolean v0, LsdkInterface/SdkInterface;->isLog:Z

    if-eqz v0, :cond_22

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SendMessage ->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Unity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :cond_22
    sget-object v0, LsdkInterface/SdkInterface;->isCallBack:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 197
    const-string v0, "CallBackObject"

    const-string v1, "OnSDKCallBack"

    invoke-static {v0, v1, p0}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    :cond_31
    return-void
.end method

.method public static SendMessage(Lorg/json/JSONObject;)V
    .registers 2
    .param p0, "json"    # Lorg/json/JSONObject;

    .line 203
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LsdkInterface/SdkInterface;->SendMessage(Ljava/lang/String;)V

    .line 204
    return-void
.end method

.method public static SetActivityCallBack(ILsdkInterface/tool/ActResultRequest$Callback;)V
    .registers 3
    .param p0, "requestCode"    # I
    .param p1, "callback"    # LsdkInterface/tool/ActResultRequest$Callback;

    .line 869
    sget-object v0, LsdkInterface/SdkInterface;->sCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v0, p0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 870
    return-void
.end method

.method public static Share(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p0, "json"    # Lorg/json/JSONObject;
    .param p1, "thumbImage"    # Ljava/lang/String;
    .param p2, "image"    # Ljava/lang/String;

    .line 811
    :try_start_0
    sget-object v0, LsdkInterface/SdkInterface;->shareSDKList:Ljava/util/ArrayList;

    invoke-static {p0, v0}, LsdkInterface/SdkInterface;->GetSDK(Lorg/json/JSONObject;Ljava/util/ArrayList;)LsdkInterface/SDKBase;

    move-result-object v0

    check-cast v0, LsdkInterface/IShare;

    .line 812
    .local v0, "share":LsdkInterface/IShare;
    if-eqz v0, :cond_14

    .line 814
    const-string v1, "FunctionName"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 815
    .local v1, "function":Ljava/lang/String;
    invoke-interface {v0, p0, p1, p2}, LsdkInterface/IShare;->Share(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 816
    .end local v1    # "function":Ljava/lang/String;
    goto :goto_2a

    .line 818
    :cond_14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dont find share json "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LsdkInterface/SdkInterface;->SendLog(Ljava/lang/String;)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2a} :catch_2b

    .line 824
    .end local v0    # "share":LsdkInterface/IShare;
    :goto_2a
    goto :goto_46

    .line 821
    :catch_2b
    move-exception v0

    .line 823
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Share Error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, LsdkInterface/SdkInterface;->SendError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 825
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_46
    return-void
.end method

.method public static UnityRequestFunction(Ljava/lang/String;)V
    .registers 6
    .param p0, "content"    # Ljava/lang/String;

    .line 50
    const-string v0, "<-"

    const/4 v1, 0x1

    :try_start_3
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    sput-object v2, LsdkInterface/SdkInterface;->isCallBack:Ljava/lang/Boolean;

    .line 51
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SDKInterface UnityRequestFunction receive ->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, LsdkInterface/SdkInterface;->SendLog(Ljava/lang/String;)V

    .line 53
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 54
    .local v2, "json":Lorg/json/JSONObject;
    const-string v3, "ModuleName"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 56
    .local v3, "moduleName":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_de

    :cond_35
    goto :goto_7b

    :sswitch_36
    const-string v1, "Other"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    const/4 v1, 0x5

    goto :goto_7c

    :sswitch_40
    const-string v4, "Login"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_35

    goto :goto_7c

    :sswitch_49
    const-string v1, "Init"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    const/4 v1, 0x0

    goto :goto_7c

    :sswitch_53
    const-string v1, "Pay"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    const/4 v1, 0x4

    goto :goto_7c

    :sswitch_5d
    const-string v1, "Log"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    const/4 v1, 0x2

    goto :goto_7c

    :sswitch_67
    const-string v1, "AD"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    const/4 v1, 0x3

    goto :goto_7c

    :sswitch_71
    const-string v1, "RealName"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    const/4 v1, 0x6

    goto :goto_7c

    :goto_7b
    const/4 v1, -0x1

    :goto_7c
    packed-switch v1, :pswitch_data_fc

    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    goto :goto_9e

    .line 65
    :pswitch_82
    invoke-static {v2}, LsdkInterface/SdkInterface;->RealName(Lorg/json/JSONObject;)V

    goto :goto_b7

    .line 64
    :pswitch_86
    invoke-static {v2}, LsdkInterface/SdkInterface;->Other(Lorg/json/JSONObject;)V

    goto :goto_b7

    .line 62
    :pswitch_8a
    invoke-static {v2}, LsdkInterface/SdkInterface;->Pay(Lorg/json/JSONObject;)V

    goto :goto_b7

    .line 61
    :pswitch_8e
    invoke-static {v2}, LsdkInterface/SdkInterface;->AD(Lorg/json/JSONObject;)V

    goto :goto_b7

    .line 60
    :pswitch_92
    invoke-static {v2}, LsdkInterface/SdkInterface;->Log(Lorg/json/JSONObject;)V

    goto :goto_b7

    .line 59
    :pswitch_96
    invoke-static {v2}, LsdkInterface/SdkInterface;->Login(Lorg/json/JSONObject;)V

    goto :goto_b7

    .line 58
    :pswitch_9a
    invoke-static {v2}, LsdkInterface/SdkInterface;->Init(Lorg/json/JSONObject;)V

    goto :goto_b7

    .line 66
    :goto_9e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UnityRequestFunction : not support function name ->"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, LsdkInterface/SdkInterface;->SendError(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_b7
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_b7} :catch_b8

    .line 72
    .end local v2    # "json":Lorg/json/JSONObject;
    .end local v3    # "moduleName":Ljava/lang/String;
    :goto_b7
    goto :goto_dd

    .line 69
    :catch_b8
    move-exception v0

    .line 71
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UnityRequestFunction Error  msg  -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<- error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, LsdkInterface/SdkInterface;->SendError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 73
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_dd
    return-void

    :sswitch_data_de
    .sparse-switch
        -0x2f6d5297 -> :sswitch_71
        0x823 -> :sswitch_67
        0x12b24 -> :sswitch_5d
        0x13888 -> :sswitch_53
        0x22d930 -> :sswitch_49
        0x462ff49 -> :sswitch_40
        0x48f8ef0 -> :sswitch_36
    .end sparse-switch

    :pswitch_data_fc
    .packed-switch 0x0
        :pswitch_9a
        :pswitch_96
        :pswitch_92
        :pswitch_8e
        :pswitch_8a
        :pswitch_86
        :pswitch_82
    .end packed-switch
.end method

.method public static UnityRequestFunctionBool(Ljava/lang/String;)Z
    .registers 7
    .param p0, "content"    # Ljava/lang/String;

    .line 134
    const-string v0, "<-"

    const/4 v1, 0x0

    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SDKInterface UnityRequestFunctionBool receive ->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, LsdkInterface/SdkInterface;->SendLog(Ljava/lang/String;)V

    .line 136
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 137
    .local v2, "json":Lorg/json/JSONObject;
    const-string v3, "ModuleName"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 139
    .local v3, "functionName":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    packed-switch v4, :pswitch_data_86

    :cond_2f
    goto :goto_3a

    :pswitch_30
    const-string v4, "RealName"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2f

    const/4 v4, 0x0

    goto :goto_3b

    :goto_3a
    const/4 v4, -0x1

    :goto_3b
    packed-switch v4, :pswitch_data_8c

    .line 142
    new-instance v4, Ljava/lang/StringBuilder;

    goto :goto_46

    .line 141
    :pswitch_41
    invoke-static {v2}, LsdkInterface/SdkInterface;->RealNameBool(Lorg/json/JSONObject;)Z

    move-result v0

    return v0

    .line 142
    :goto_46
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UnityRequestFunctionString : not support function name ->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    invoke-static {v0, v4}, LsdkInterface/SdkInterface;->SendError(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_5f} :catch_60

    return v1

    .line 146
    .end local v2    # "json":Lorg/json/JSONObject;
    .end local v3    # "functionName":Ljava/lang/String;
    :catch_60
    move-exception v0

    .line 148
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UnityRequestFunctionString Error  msg  -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<- error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, LsdkInterface/SdkInterface;->SendError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 149
    return v1

    :pswitch_data_86
    .packed-switch -0x2f6d5297
        :pswitch_30
    .end packed-switch

    :pswitch_data_8c
    .packed-switch 0x0
        :pswitch_41
    .end packed-switch
.end method

.method public static UnityRequestFunctionInt(Ljava/lang/String;)I
    .registers 7
    .param p0, "content"    # Ljava/lang/String;

    .line 80
    const-string v0, "<-"

    const/4 v1, 0x0

    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SDKInterface UnityRequestFunctionInt receive ->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, LsdkInterface/SdkInterface;->SendLog(Ljava/lang/String;)V

    .line 82
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 83
    .local v2, "json":Lorg/json/JSONObject;
    const-string v3, "ModuleName"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 85
    .local v3, "moduleName":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    packed-switch v4, :pswitch_data_82

    :cond_2f
    goto :goto_3a

    :pswitch_30
    const-string v4, "RealName"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2f

    const/4 v4, 0x0

    goto :goto_3b

    :goto_3a
    const/4 v4, -0x1

    :goto_3b
    packed-switch v4, :pswitch_data_88

    .line 90
    new-instance v4, Ljava/lang/StringBuilder;

    goto :goto_42

    .line 88
    :pswitch_41
    return v1

    .line 90
    :goto_42
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UnityRequestFunctionInt : not support function name ->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    invoke-static {v0, v4}, LsdkInterface/SdkInterface;->SendError(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_5b} :catch_5c

    .line 91
    return v1

    .line 94
    .end local v2    # "json":Lorg/json/JSONObject;
    .end local v3    # "moduleName":Ljava/lang/String;
    :catch_5c
    move-exception v0

    .line 96
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UnityRequestFunctionInt Error  msg  -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<- error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, LsdkInterface/SdkInterface;->SendError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 97
    return v1

    :pswitch_data_82
    .packed-switch -0x2f6d5297
        :pswitch_30
    .end packed-switch

    :pswitch_data_88
    .packed-switch 0x0
        :pswitch_41
    .end packed-switch
.end method

.method public static UnityRequestFunctionString(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "content"    # Ljava/lang/String;

    .line 106
    const-string v0, "<-"

    const-string v1, "0"

    :try_start_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SDKInterface UnityRequestFunctionString receive ->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, LsdkInterface/SdkInterface;->SendLog(Ljava/lang/String;)V

    .line 108
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 109
    .local v2, "json":Lorg/json/JSONObject;
    const-string v3, "ModuleName"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 111
    .local v3, "moduleName":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_94

    :cond_30
    goto :goto_45

    :sswitch_31
    const-string v4, "Other"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_30

    const/4 v4, 0x0

    goto :goto_46

    :sswitch_3b
    const-string v4, "RealName"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_30

    const/4 v4, 0x1

    goto :goto_46

    :goto_45
    const/4 v4, -0x1

    :goto_46
    packed-switch v4, :pswitch_data_9e

    .line 118
    new-instance v4, Ljava/lang/StringBuilder;

    goto :goto_54

    .line 116
    :pswitch_4c
    invoke-static {v2}, LsdkInterface/SdkInterface;->RealNameString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 114
    :pswitch_51
    const-string v0, ""

    return-object v0

    .line 118
    :goto_54
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UnityRequestFunctionString : not support function name ->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    invoke-static {v0, v4}, LsdkInterface/SdkInterface;->SendError(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_6d} :catch_6e

    .line 119
    return-object v1

    .line 122
    .end local v2    # "json":Lorg/json/JSONObject;
    .end local v3    # "moduleName":Ljava/lang/String;
    :catch_6e
    move-exception v0

    .line 124
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UnityRequestFunctionString Error  msg  -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<- error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, LsdkInterface/SdkInterface;->SendError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 125
    return-object v1

    :sswitch_data_94
    .sparse-switch
        -0x2f6d5297 -> :sswitch_3b
        0x48f8ef0 -> :sswitch_31
    .end sparse-switch

    :pswitch_data_9e
    .packed-switch 0x0
        :pswitch_51
        :pswitch_4c
    .end packed-switch
.end method

.method public static onActivityResult(IILandroid/content/Intent;)V
    .registers 7
    .param p0, "requestCode"    # I
    .param p1, "resultCode"    # I
    .param p2, "data"    # Landroid/content/Intent;

    .line 874
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SdkInterface onActivityResult requestCode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " resultCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LsdkInterface/SdkInterface;->SendLog(Ljava/lang/String;)V

    .line 876
    sget-object v0, LsdkInterface/SdkInterface;->sCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LsdkInterface/tool/ActResultRequest$Callback;

    .line 877
    .local v0, "callback":LsdkInterface/tool/ActResultRequest$Callback;
    sget-object v1, LsdkInterface/SdkInterface;->sCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->remove(I)V

    .line 879
    if-eqz v0, :cond_32

    .line 880
    invoke-interface {v0, p0, p1, p2}, LsdkInterface/tool/ActResultRequest$Callback;->onActivityResult(IILandroid/content/Intent;)V

    .line 884
    :cond_32
    :try_start_32
    sget-object v1, LsdkInterface/SdkInterface;->allClass:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_52

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 886
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;LsdkInterface/SDKBase;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LsdkInterface/SDKBase;

    invoke-virtual {v3, p0, p1, p2}, LsdkInterface/SDKBase;->OnActivityResult(IILandroid/content/Intent;)V
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_51} :catch_53

    .line 887
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;LsdkInterface/SDKBase;>;"
    goto :goto_3c

    .line 892
    :cond_52
    goto :goto_6e

    .line 889
    :catch_53
    move-exception v1

    .line 891
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onActivityResult Error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, LsdkInterface/SdkInterface;->SendError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 893
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_6e
    return-void
.end method

.method public static onAttachedToWindow()V
    .registers 3

    .line 1133
    const-string v0, "SDKInterBase onAttachedToWindow "

    invoke-static {v0}, LsdkInterface/SdkInterface;->SendLog(Ljava/lang/String;)V

    .line 1135
    :try_start_5
    sget-object v0, LsdkInterface/SdkInterface;->allClass:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1137
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;LsdkInterface/SDKBase;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LsdkInterface/SDKBase;

    invoke-virtual {v2}, LsdkInterface/SDKBase;->onAttachedToWindow()V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_24} :catch_26

    .line 1138
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;LsdkInterface/SDKBase;>;"
    goto :goto_f

    .line 1143
    :cond_25
    goto :goto_41

    .line 1140
    :catch_26
    move-exception v0

    .line 1142
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAttachedToWindow Error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, LsdkInterface/SdkInterface;->SendError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1144
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_41
    return-void
.end method

.method public static onBackPressed()V
    .registers 3

    .line 1162
    const-string v0, "SDKInterBase onBackPressed "

    invoke-static {v0}, LsdkInterface/SdkInterface;->SendLog(Ljava/lang/String;)V

    .line 1164
    :try_start_5
    sget-object v0, LsdkInterface/SdkInterface;->allClass:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1166
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;LsdkInterface/SDKBase;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LsdkInterface/SDKBase;

    invoke-virtual {v2}, LsdkInterface/SDKBase;->onBackPressed()V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_24} :catch_26

    .line 1167
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;LsdkInterface/SDKBase;>;"
    goto :goto_f

    .line 1172
    :cond_25
    goto :goto_41

    .line 1169
    :catch_26
    move-exception v0

    .line 1171
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBackPressed Error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, LsdkInterface/SdkInterface;->SendError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1173
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_41
    return-void
.end method

.method public static onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4
    .param p0, "newConfig"    # Landroid/content/res/Configuration;

    .line 1118
    const-string v0, "SDKInterBase onConfigurationChanged "

    invoke-static {v0}, LsdkInterface/SdkInterface;->SendLog(Ljava/lang/String;)V

    .line 1120
    :try_start_5
    sget-object v0, LsdkInterface/SdkInterface;->allClass:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1122
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;LsdkInterface/SDKBase;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LsdkInterface/SDKBase;

    invoke-virtual {v2, p0}, LsdkInterface/SDKBase;->onConfigurationChanged(Landroid/content/res/Configuration;)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_24} :catch_26

    .line 1123
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;LsdkInterface/SDKBase;>;"
    goto :goto_f

    .line 1128
    :cond_25
    goto :goto_41

    .line 1125
    :catch_26
    move-exception v0

    .line 1127
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigurationChanged Error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, LsdkInterface/SdkInterface;->SendError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1129
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_41
    return-void
.end method

.method public static onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p0, "savedInstanceState"    # Landroid/os/Bundle;

    .line 1103
    const-string v0, "SDKInterBase onRestoreInstanceState "

    invoke-static {v0}, LsdkInterface/SdkInterface;->SendLog(Ljava/lang/String;)V

    .line 1105
    :try_start_5
    sget-object v0, LsdkInterface/SdkInterface;->allClass:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1107
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;LsdkInterface/SDKBase;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LsdkInterface/SDKBase;

    invoke-virtual {v2, p0}, LsdkInterface/SDKBase;->onRestoreInstanceState(Landroid/os/Bundle;)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_24} :catch_26

    .line 1108
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;LsdkInterface/SDKBase;>;"
    goto :goto_f

    .line 1113
    :cond_25
    goto :goto_41

    .line 1110
    :catch_26
    move-exception v0

    .line 1112
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRestoreInstanceState Error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, LsdkInterface/SdkInterface;->SendError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1114
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_41
    return-void
.end method

.method public static onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p0, "outState"    # Landroid/os/Bundle;

    .line 1088
    const-string v0, "SDKInterBase onSaveInstanceState "

    invoke-static {v0}, LsdkInterface/SdkInterface;->SendLog(Ljava/lang/String;)V

    .line 1090
    :try_start_5
    sget-object v0, LsdkInterface/SdkInterface;->allClass:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1092
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;LsdkInterface/SDKBase;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LsdkInterface/SDKBase;

    invoke-virtual {v2, p0}, LsdkInterface/SDKBase;->onSaveInstanceState(Landroid/os/Bundle;)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_24} :catch_26

    .line 1093
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;LsdkInterface/SDKBase;>;"
    goto :goto_f

    .line 1098
    :cond_25
    goto :goto_41

    .line 1095
    :catch_26
    move-exception v0

    .line 1097
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSaveInstanceState Error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, LsdkInterface/SdkInterface;->SendError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1099
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_41
    return-void
.end method

.method public static onWindowFocusChanged(Z)V
    .registers 4
    .param p0, "hasFocus"    # Z

    .line 1148
    const-string v0, "SDKInterBase onWindowFocusChanged "

    invoke-static {v0}, LsdkInterface/SdkInterface;->SendLog(Ljava/lang/String;)V

    .line 1150
    :try_start_5
    sget-object v0, LsdkInterface/SdkInterface;->allClass:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1152
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;LsdkInterface/SDKBase;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LsdkInterface/SDKBase;

    invoke-virtual {v2, p0}, LsdkInterface/SDKBase;->onWindowFocusChanged(Z)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_24} :catch_26

    .line 1153
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;LsdkInterface/SDKBase;>;"
    goto :goto_f

    .line 1158
    :cond_25
    goto :goto_41

    .line 1155
    :catch_26
    move-exception v0

    .line 1157
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWindowFocusChanged Error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, LsdkInterface/SdkInterface;->SendError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1159
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_41
    return-void
.end method
