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

    .line 28
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, LsdkInterface/SdkInterface;->isCallBack:Ljava/lang/Boolean;

    .line 31
    sput-boolean v0, LsdkInterface/SdkInterface;->isInit:Z

    .line 32
    const/4 v1, 0x1

    sput-boolean v1, LsdkInterface/SdkInterface;->isLog:Z

    .line 33
    sput-boolean v0, LsdkInterface/SdkInterface;->isMultiDex:Z

    .line 41
    const/16 v0, 0x11

    sput v0, LsdkInterface/SdkInterface;->sRequestCode:I

    .line 42
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, LsdkInterface/SdkInterface;->sCallbacks:Landroid/util/SparseArray;

    .line 1300
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, LsdkInterface/SdkInterface;->allClass:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static AD(Lorg/json/JSONObject;)V
    .registers 6
    .param p0, "json"    # Lorg/json/JSONObject;

    .line 507
    :try_start_0
    sget-object v0, LsdkInterface/SdkInterface;->adSDKList:Ljava/util/ArrayList;

    invoke-static {p0, v0}, LsdkInterface/SdkInterface;->GetSDK(Lorg/json/JSONObject;Ljava/util/ArrayList;)LsdkInterface/SDKBase;

    move-result-object v0

    check-cast v0, LsdkInterface/IAD;

    .line 508
    .local v0, "ad":LsdkInterface/IAD;
    const/4 v1, 0x0

    if-eqz v0, :cond_5e

    .line 510
    const-string v2, "FunctionName"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 511
    .local v2, "functionName":Ljava/lang/String;
    const/4 v3, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_9c

    :cond_19
    goto :goto_37

    :sswitch_1a
    const-string v4, "CloseAD"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    const/4 v3, 0x1

    goto :goto_37

    :sswitch_24
    const-string v4, "PlayAD"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    const/4 v3, 0x0

    goto :goto_37

    :sswitch_2e
    const-string v4, "LoadAD"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    const/4 v3, 0x2

    :goto_37
    packed-switch v3, :pswitch_data_aa

    goto :goto_47

    .line 518
    :pswitch_3b
    invoke-interface {v0, p0}, LsdkInterface/IAD;->LoadAD(Lorg/json/JSONObject;)V

    goto :goto_47

    .line 516
    :pswitch_3f
    invoke-interface {v0, p0}, LsdkInterface/IAD;->CloseAD(Lorg/json/JSONObject;)V

    goto :goto_5d

    .line 514
    :pswitch_43
    invoke-interface {v0, p0}, LsdkInterface/IAD;->PlayAD(Lorg/json/JSONObject;)V

    goto :goto_5d

    .line 520
    :goto_47
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

    .line 522
    .end local v2    # "functionName":Ljava/lang/String;
    :goto_5d
    goto :goto_78

    .line 525
    :cond_5e
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
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_78} :catch_79

    .line 530
    .end local v0    # "ad":LsdkInterface/IAD;
    :goto_78
    goto :goto_9a

    .line 528
    :catch_79
    move-exception v0

    .line 529
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

    .line 531
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_9a
    return-void

    nop

    :sswitch_data_9c
    .sparse-switch
        -0x7805e857 -> :sswitch_2e
        -0x715c7d89 -> :sswitch_24
        -0x69212005 -> :sswitch_1a
    .end sparse-switch

    :pswitch_data_aa
    .packed-switch 0x0
        :pswitch_43
        :pswitch_3f
        :pswitch_3b
    .end packed-switch
.end method

.method public static ADIsLoad(Ljava/lang/String;)Z
    .registers 5
    .param p0, "content"    # Ljava/lang/String;

    .line 536
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 538
    .local v0, "json":Lorg/json/JSONObject;
    sget-object v1, LsdkInterface/SdkInterface;->adSDKList:Ljava/util/ArrayList;

    invoke-static {v0, v1}, LsdkInterface/SdkInterface;->GetSDK(Lorg/json/JSONObject;Ljava/util/ArrayList;)LsdkInterface/SDKBase;

    move-result-object v1

    check-cast v1, LsdkInterface/IAD;

    .line 539
    .local v1, "ad":LsdkInterface/IAD;
    if-eqz v1, :cond_18

    .line 540
    invoke-interface {v1, v0}, LsdkInterface/IAD;->IsLoaded(Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    return v2

    .line 544
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

    .line 549
    .end local v0    # "json":Lorg/json/JSONObject;
    .end local v1    # "ad":LsdkInterface/IAD;
    goto :goto_5b

    .line 547
    :catch_44
    move-exception v0

    .line 548
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

    .line 550
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_5b
    const/4 v0, 0x0

    return v0
.end method

.method static ApplictaionQuit()Z
    .registers 4

    .line 1174
    const/4 v0, 0x0

    .line 1175
    .local v0, "isQuit":Z
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

    .line 1177
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;LsdkInterface/SDKBase;>;"
    if-nez v0, :cond_23

    .line 1179
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LsdkInterface/SDKBase;

    invoke-virtual {v3}, LsdkInterface/SDKBase;->OnAppplicationQuit()Z

    move-result v0

    .line 1181
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;LsdkInterface/SDKBase;>;"
    :cond_23
    goto :goto_b

    .line 1183
    :cond_24
    return v0
.end method

.method public static AttachBaseContext(Landroid/content/Context;)V
    .registers 4
    .param p0, "base"    # Landroid/content/Context;

    .line 908
    const-string v0, "SDKInterface AttachBaseContext "

    invoke-static {v0}, LsdkInterface/SdkInterface;->SendLog(Ljava/lang/String;)V

    .line 910
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

    .line 912
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;LsdkInterface/SDKBase;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LsdkInterface/SDKBase;

    invoke-virtual {v2, p0}, LsdkInterface/SDKBase;->AttachBaseContext(Landroid/content/Context;)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_24} :catch_26

    .line 913
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;LsdkInterface/SDKBase;>;"
    goto :goto_f

    .line 918
    :cond_25
    goto :goto_41

    .line 915
    :catch_26
    move-exception v0

    .line 917
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

    .line 919
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_41
    return-void
.end method

.method public static GetCallStrack(Ljava/lang/Exception;)Ljava/lang/String;
    .registers 6
    .param p0, "e"    # Ljava/lang/Exception;

    .line 844
    if-nez p0, :cond_5

    .line 846
    const-string v0, ""

    return-object v0

    .line 849
    :cond_5
    const-string v0, ""

    .line 851
    .local v0, "content":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 853
    .local v1, "stackElements":[Ljava/lang/StackTraceElement;
    if-eqz v1, :cond_67

    .line 854
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_e
    array-length v3, v1

    if-ge v2, v3, :cond_67

    .line 855
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

    .line 856
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

    .line 854
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 859
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

    .line 1304
    sget-object v0, LsdkInterface/SdkInterface;->allClass:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1306
    sget-object v0, LsdkInterface/SdkInterface;->allClass:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LsdkInterface/SDKBase;

    return-object v0

    .line 1310
    :cond_11
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1311
    .local v0, "cla":Ljava/lang/Class;
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LsdkInterface/SDKBase;

    .line 1312
    .local v1, "sdk":LsdkInterface/SDKBase;
    sget-object v2, LsdkInterface/SdkInterface;->SdkManifest:Ljava/util/Properties;

    invoke-virtual {v2, p0, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, LsdkInterface/SDKBase;->SDKName:Ljava/lang/String;

    .line 1313
    sget-object v2, LsdkInterface/SdkInterface;->allClass:Ljava/util/HashMap;

    invoke-virtual {v2, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1315
    return-object v1
.end method

.method public static GetContext()Landroid/content/Context;
    .registers 1

    .line 1297
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static GetIsLog()Z
    .registers 2

    .line 1228
    sget-object v0, LsdkInterface/SdkInterface;->SdkManifest:Ljava/util/Properties;

    const-string v1, "IsLog"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1230
    sget-object v0, LsdkInterface/SdkInterface;->SdkManifest:Ljava/util/Properties;

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 1234
    :cond_15
    const/4 v0, 0x0

    return v0
.end method

.method static GetIsMultiDex()Z
    .registers 2

    .line 1240
    sget-object v0, LsdkInterface/SdkInterface;->SdkManifest:Ljava/util/Properties;

    const-string v1, "IsMultiDex"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1242
    sget-object v0, LsdkInterface/SdkInterface;->SdkManifest:Ljava/util/Properties;

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 1246
    :cond_15
    const/4 v0, 0x0

    return v0
.end method

.method public static GetPrePay(Ljava/lang/String;)Z
    .registers 4
    .param p0, "SDKName"    # Ljava/lang/String;

    .line 445
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

    .line 447
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1d
    sget-object v1, LsdkInterface/SdkInterface;->paySDKList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_45

    .line 449
    sget-object v1, LsdkInterface/SdkInterface;->paySDKList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LsdkInterface/SDKBase;

    iget-object v1, v1, LsdkInterface/SDKBase;->SDKName:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 451
    sget-object v1, LsdkInterface/SdkInterface;->paySDKList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LsdkInterface/IPay;

    .line 452
    .local v1, "pay":LsdkInterface/IPay;
    invoke-interface {v1}, LsdkInterface/IPay;->IsPrePay()Z

    move-result v2

    return v2

    .line 447
    .end local v1    # "pay":LsdkInterface/IPay;
    :cond_42
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 456
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

    .line 157
    :try_start_0
    invoke-static {}, LsdkInterface/SdkInterface;->GetContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, LsdkInterface/tool/PropertieTool;->getProperties(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Properties;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 159
    invoke-static {}, LsdkInterface/SdkInterface;->GetContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, LsdkInterface/tool/PropertieTool;->getProperties(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Properties;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1a} :catch_1c

    return-object v0

    .line 163
    :cond_1b
    return-object p2

    .line 166
    :catch_1c
    move-exception v0

    .line 168
    .local v0, "e":Ljava/lang/Exception;
    return-object p2
.end method

.method public static GetReSendPay(Ljava/lang/String;)Z
    .registers 4
    .param p0, "SDKName"    # Ljava/lang/String;

    .line 461
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

    .line 463
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1d
    sget-object v1, LsdkInterface/SdkInterface;->paySDKList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_45

    .line 465
    sget-object v1, LsdkInterface/SdkInterface;->paySDKList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LsdkInterface/SDKBase;

    iget-object v1, v1, LsdkInterface/SDKBase;->SDKName:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 467
    sget-object v1, LsdkInterface/SdkInterface;->paySDKList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LsdkInterface/IPay;

    .line 468
    .local v1, "pay":LsdkInterface/IPay;
    invoke-interface {v1}, LsdkInterface/IPay;->IsReSendPay()Z

    move-result v2

    return v2

    .line 463
    .end local v1    # "pay":LsdkInterface/IPay;
    :cond_42
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 472
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

    .line 1256
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<LsdkInterface/SDKBase;>;"
    sget-boolean v0, LsdkInterface/SdkInterface;->isInit:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_a7

    .line 1258
    const-string v0, "SDKName"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8c

    .line 1260
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1261
    .local v0, "SDKName":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_12
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3a

    .line 1263
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

    .line 1265
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LsdkInterface/SDKBase;

    return-object v1

    .line 1261
    :cond_37
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 1269
    .end local v2    # "i":I
    :cond_3a
    const-string v2, ""

    .line 1270
    .local v2, "sdkList":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3d
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_65

    .line 1272
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

    .line 1270
    add-int/lit8 v3, v3, 0x1

    goto :goto_3d

    .line 1275
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

    .line 1276
    return-object v1

    .line 1278
    .end local v0    # "SDKName":Ljava/lang/String;
    .end local v2    # "sdkList":Ljava/lang/String;
    :cond_8c
    const-string v0, "SDKIndex"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9f

    .line 1280
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 1281
    .local v0, "index":I
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LsdkInterface/SDKBase;

    return-object v1

    .line 1285
    .end local v0    # "index":I
    :cond_9f
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LsdkInterface/SDKBase;

    return-object v0

    .line 1290
    :cond_a7
    const-string v0, "SDKManager\u5c1a\u672a\u521d\u59cb\u5316\uff01"

    invoke-static {v0}, LsdkInterface/SdkInterface;->SendLog(Ljava/lang/String;)V

    .line 1291
    return-object v1
.end method

.method public static GetSupportLoginPlatform()Ljava/lang/String;
    .registers 4

    .line 174
    const-string v0, ""

    .line 175
    .local v0, "result":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    sget-object v2, LsdkInterface/SdkInterface;->loginSDKList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_46

    .line 177
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

    .line 179
    sget-object v2, LsdkInterface/SdkInterface;->loginSDKList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_43

    .line 181
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 175
    :cond_43
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 184
    .end local v1    # "i":I
    :cond_46
    return-object v0
.end method

.method public static GetSupportSharePlatform()Ljava/lang/String;
    .registers 4

    .line 825
    const-string v0, ""

    .line 826
    .local v0, "result":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    sget-object v2, LsdkInterface/SdkInterface;->shareSDKList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_46

    .line 828
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

    .line 830
    sget-object v2, LsdkInterface/SdkInterface;->shareSDKList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_43

    .line 832
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 826
    :cond_43
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 835
    .end local v1    # "i":I
    :cond_46
    return-object v0
.end method

.method public static Init()V
    .registers 3

    .line 926
    sget-boolean v0, LsdkInterface/SdkInterface;->isInit:Z

    if-nez v0, :cond_3d

    .line 927
    const/4 v0, 0x1

    sput-boolean v0, LsdkInterface/SdkInterface;->isInit:Z

    .line 930
    :try_start_7
    const-string v0, "SDKInterBase OnCreate "

    invoke-static {v0}, LsdkInterface/SdkInterface;->SendLog(Ljava/lang/String;)V

    .line 932
    invoke-static {}, LsdkInterface/SdkInterface;->InitSdkManifestProperty()V

    .line 935
    const/4 v0, 0x0

    invoke-static {v0}, LsdkInterface/SdkInterface;->InitLoginSDK(Lorg/json/JSONObject;)V

    .line 936
    invoke-static {v0}, LsdkInterface/SdkInterface;->InitLog(Lorg/json/JSONObject;)V

    .line 937
    invoke-static {v0}, LsdkInterface/SdkInterface;->InitPay(Lorg/json/JSONObject;)V

    .line 938
    invoke-static {v0}, LsdkInterface/SdkInterface;->InitAD(Lorg/json/JSONObject;)V

    .line 939
    invoke-static {v0}, LsdkInterface/SdkInterface;->InitShare(Lorg/json/JSONObject;)V

    .line 940
    invoke-static {v0}, LsdkInterface/SdkInterface;->InitOther(Lorg/json/JSONObject;)V

    .line 941
    invoke-static {v0}, LsdkInterface/SdkInterface;->InitRealName(Lorg/json/JSONObject;)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_25} :catch_26

    .line 944
    goto :goto_3d

    .line 942
    :catch_26
    move-exception v0

    .line 943
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

    .line 946
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3d
    :goto_3d
    return-void
.end method

.method static Init(Lorg/json/JSONObject;)V
    .registers 6
    .param p0, "json"    # Lorg/json/JSONObject;

    .line 277
    invoke-static {}, LsdkInterface/SdkInterface;->Init()V

    .line 278
    invoke-static {}, LsdkInterface/SdkInterface;->InitActResultRequest()V

    .line 280
    const-string v0, "SDKManager Init "

    invoke-static {v0}, LsdkInterface/SdkInterface;->SendLog(Ljava/lang/String;)V

    .line 283
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

    .line 286
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;LsdkInterface/SDKBase;>;"
    :try_start_21
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LsdkInterface/SDKBase;

    invoke-virtual {v2, p0}, LsdkInterface/SDKBase;->Init(Lorg/json/JSONObject;)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_2a} :catch_2b

    .line 291
    goto :goto_50

    .line 288
    :catch_2b
    move-exception v2

    .line 290
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

    .line 292
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;LsdkInterface/SDKBase;>;"
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_50
    goto :goto_15

    .line 297
    :cond_51
    goto :goto_6d

    .line 294
    :catch_52
    move-exception v0

    .line 296
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

    .line 298
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_6d
    return-void
.end method

.method static InitAD(Lorg/json/JSONObject;)V
    .registers 7
    .param p0, "json"    # Lorg/json/JSONObject;

    .line 480
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, LsdkInterface/SdkInterface;->adSDKList:Ljava/util/ArrayList;

    .line 482
    sget-object v0, LsdkInterface/SdkInterface;->SdkManifest:Ljava/util/Properties;

    const-string v1, "AD"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 483
    .local v0, "adClassNameConfig":Ljava/lang/String;
    const-string v1, "\\|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 485
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

    .line 487
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_37
    array-length v3, v1

    if-ge v2, v3, :cond_5c

    .line 490
    aget-object v3, v1, v2

    if-eqz v3, :cond_59

    aget-object v3, v1, v2

    const-string v4, ""

    if-eq v3, v4, :cond_59

    .line 493
    :try_start_44
    aget-object v3, v1, v2

    .line 494
    .local v3, "className":Ljava/lang/String;
    invoke-static {v3, p0}, LsdkInterface/SdkInterface;->GetClass(Ljava/lang/String;Lorg/json/JSONObject;)LsdkInterface/SDKBase;

    move-result-object v4

    .line 496
    .local v4, "ins":LsdkInterface/SDKBase;
    sget-object v5, LsdkInterface/SdkInterface;->adSDKList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_4f} :catch_51

    .line 500
    nop

    .end local v3    # "className":Ljava/lang/String;
    .end local v4    # "ins":LsdkInterface/SDKBase;
    goto :goto_59

    .line 498
    :catch_51
    move-exception v3

    .line 499
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, LsdkInterface/SdkInterface;->SendError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 487
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_59
    :goto_59
    add-int/lit8 v2, v2, 0x1

    goto :goto_37

    .line 503
    .end local v2    # "i":I
    :cond_5c
    return-void
.end method

.method static InitActResultRequest()V
    .registers 2

    .line 307
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v1, LsdkInterface/SdkInterface$1StartThread;

    invoke-direct {v1}, LsdkInterface/SdkInterface$1StartThread;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 308
    return-void
.end method

.method static InitLog(Lorg/json/JSONObject;)V
    .registers 7
    .param p0, "json"    # Lorg/json/JSONObject;

    .line 558
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, LsdkInterface/SdkInterface;->logList:Ljava/util/ArrayList;

    .line 560
    sget-object v0, LsdkInterface/SdkInterface;->SdkManifest:Ljava/util/Properties;

    const-string v1, "Log"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 561
    .local v0, "logClassNameConfig":Ljava/lang/String;
    const-string v1, "\\|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 563
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

    .line 565
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2c
    array-length v3, v1

    if-ge v2, v3, :cond_51

    .line 567
    aget-object v3, v1, v2

    if-eqz v3, :cond_4e

    aget-object v3, v1, v2

    const-string v4, ""

    if-eq v3, v4, :cond_4e

    .line 571
    :try_start_39
    aget-object v3, v1, v2

    .line 572
    .local v3, "className":Ljava/lang/String;
    invoke-static {v3, p0}, LsdkInterface/SdkInterface;->GetClass(Ljava/lang/String;Lorg/json/JSONObject;)LsdkInterface/SDKBase;

    move-result-object v4

    .line 574
    .local v4, "ins":LsdkInterface/SDKBase;
    sget-object v5, LsdkInterface/SdkInterface;->logList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_44} :catch_46

    .line 577
    nop

    .end local v3    # "className":Ljava/lang/String;
    .end local v4    # "ins":LsdkInterface/SDKBase;
    goto :goto_4e

    .line 575
    :catch_46
    move-exception v3

    .line 576
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, LsdkInterface/SdkInterface;->SendError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 565
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_4e
    :goto_4e
    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    .line 580
    .end local v2    # "i":I
    :cond_51
    return-void
.end method

.method static InitLoginSDK(Lorg/json/JSONObject;)V
    .registers 7
    .param p0, "json"    # Lorg/json/JSONObject;

    .line 317
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, LsdkInterface/SdkInterface;->loginSDKList:Ljava/util/ArrayList;

    .line 319
    sget-object v0, LsdkInterface/SdkInterface;->SdkManifest:Ljava/util/Properties;

    const-string v1, "Login"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 320
    .local v0, "loginClassNameConfig":Ljava/lang/String;
    const-string v1, "\\|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 322
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

    .line 324
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2c
    array-length v3, v1

    if-ge v2, v3, :cond_51

    .line 326
    aget-object v3, v1, v2

    if-eqz v3, :cond_4e

    aget-object v3, v1, v2

    const-string v4, ""

    if-eq v3, v4, :cond_4e

    .line 330
    :try_start_39
    aget-object v3, v1, v2

    .line 331
    .local v3, "className":Ljava/lang/String;
    invoke-static {v3, p0}, LsdkInterface/SdkInterface;->GetClass(Ljava/lang/String;Lorg/json/JSONObject;)LsdkInterface/SDKBase;

    move-result-object v4

    .line 333
    .local v4, "ins":LsdkInterface/SDKBase;
    sget-object v5, LsdkInterface/SdkInterface;->loginSDKList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_44} :catch_46

    .line 336
    nop

    .end local v3    # "className":Ljava/lang/String;
    .end local v4    # "ins":LsdkInterface/SDKBase;
    goto :goto_4e

    .line 334
    :catch_46
    move-exception v3

    .line 335
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, LsdkInterface/SdkInterface;->SendError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 324
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_4e
    :goto_4e
    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    .line 339
    .end local v2    # "i":I
    :cond_51
    return-void
.end method

.method static InitOther(Lorg/json/JSONObject;)V
    .registers 7
    .param p0, "json"    # Lorg/json/JSONObject;

    .line 1088
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, LsdkInterface/SdkInterface;->otherSDKList:Ljava/util/ArrayList;

    .line 1090
    sget-object v0, LsdkInterface/SdkInterface;->SdkManifest:Ljava/util/Properties;

    const-string v1, "Other"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1091
    .local v0, "otherClassNameConfig":Ljava/lang/String;
    const-string v1, "\\|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1093
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

    .line 1095
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2c
    array-length v3, v1

    if-ge v2, v3, :cond_51

    .line 1098
    aget-object v3, v1, v2

    if-eqz v3, :cond_4e

    aget-object v3, v1, v2

    const-string v4, ""

    if-eq v3, v4, :cond_4e

    .line 1101
    :try_start_39
    aget-object v3, v1, v2

    .line 1102
    .local v3, "className":Ljava/lang/String;
    invoke-static {v3, p0}, LsdkInterface/SdkInterface;->GetClass(Ljava/lang/String;Lorg/json/JSONObject;)LsdkInterface/SDKBase;

    move-result-object v4

    .line 1104
    .local v4, "ins":LsdkInterface/SDKBase;
    sget-object v5, LsdkInterface/SdkInterface;->otherSDKList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_44} :catch_46

    .line 1107
    nop

    .end local v3    # "className":Ljava/lang/String;
    .end local v4    # "ins":LsdkInterface/SDKBase;
    goto :goto_4e

    .line 1105
    :catch_46
    move-exception v3

    .line 1106
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, LsdkInterface/SdkInterface;->SendError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1095
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_4e
    :goto_4e
    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    .line 1110
    .end local v2    # "i":I
    :cond_51
    return-void
.end method

.method static InitPay(Lorg/json/JSONObject;)V
    .registers 7
    .param p0, "json"    # Lorg/json/JSONObject;

    .line 379
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, LsdkInterface/SdkInterface;->paySDKList:Ljava/util/ArrayList;

    .line 381
    sget-object v0, LsdkInterface/SdkInterface;->SdkManifest:Ljava/util/Properties;

    const-string v1, "Pay"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 382
    .local v0, "payClassNameConfig":Ljava/lang/String;
    const-string v1, "\\|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 384
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

    .line 386
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2c
    array-length v3, v1

    if-ge v2, v3, :cond_51

    .line 388
    aget-object v3, v1, v2

    if-eqz v3, :cond_4e

    aget-object v3, v1, v2

    const-string v4, ""

    if-eq v3, v4, :cond_4e

    .line 392
    :try_start_39
    aget-object v3, v1, v2

    .line 393
    .local v3, "className":Ljava/lang/String;
    invoke-static {v3, p0}, LsdkInterface/SdkInterface;->GetClass(Ljava/lang/String;Lorg/json/JSONObject;)LsdkInterface/SDKBase;

    move-result-object v4

    .line 395
    .local v4, "ins":LsdkInterface/SDKBase;
    sget-object v5, LsdkInterface/SdkInterface;->paySDKList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_44} :catch_46

    .line 398
    nop

    .end local v3    # "className":Ljava/lang/String;
    .end local v4    # "ins":LsdkInterface/SDKBase;
    goto :goto_4e

    .line 396
    :catch_46
    move-exception v3

    .line 397
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, LsdkInterface/SdkInterface;->SendError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 386
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_4e
    :goto_4e
    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    .line 401
    .end local v2    # "i":I
    :cond_51
    return-void
.end method

.method static InitRealName(Lorg/json/JSONObject;)V
    .registers 7
    .param p0, "json"    # Lorg/json/JSONObject;

    .line 1114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, LsdkInterface/SdkInterface;->realNameSDKList:Ljava/util/ArrayList;

    .line 1116
    sget-object v0, LsdkInterface/SdkInterface;->SdkManifest:Ljava/util/Properties;

    const-string v1, "RealName"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1117
    .local v0, "realNameeClassNameConfig":Ljava/lang/String;
    const-string v1, "\\|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1119
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

    .line 1121
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2c
    array-length v3, v1

    if-ge v2, v3, :cond_51

    .line 1124
    aget-object v3, v1, v2

    if-eqz v3, :cond_4e

    aget-object v3, v1, v2

    const-string v4, ""

    if-eq v3, v4, :cond_4e

    .line 1127
    :try_start_39
    aget-object v3, v1, v2

    .line 1128
    .local v3, "className":Ljava/lang/String;
    invoke-static {v3, p0}, LsdkInterface/SdkInterface;->GetClass(Ljava/lang/String;Lorg/json/JSONObject;)LsdkInterface/SDKBase;

    move-result-object v4

    .line 1130
    .local v4, "ins":LsdkInterface/SDKBase;
    sget-object v5, LsdkInterface/SdkInterface;->realNameSDKList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_44} :catch_46

    .line 1133
    nop

    .end local v3    # "className":Ljava/lang/String;
    .end local v4    # "ins":LsdkInterface/SDKBase;
    goto :goto_4e

    .line 1131
    :catch_46
    move-exception v3

    .line 1132
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, LsdkInterface/SdkInterface;->SendError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1121
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_4e
    :goto_4e
    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    .line 1136
    .end local v2    # "i":I
    :cond_51
    return-void
.end method

.method public static InitSdkManifestProperty()V
    .registers 2

    .line 1214
    sget-object v0, LsdkInterface/SdkInterface;->SdkManifest:Ljava/util/Properties;

    if-nez v0, :cond_23

    .line 1217
    :try_start_4
    invoke-static {}, LsdkInterface/SdkInterface;->GetContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "SdkManifest"

    invoke-static {v0, v1}, LsdkInterface/tool/PropertieTool;->getProperties(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Properties;

    move-result-object v0

    sput-object v0, LsdkInterface/SdkInterface;->SdkManifest:Ljava/util/Properties;

    .line 1218
    invoke-static {}, LsdkInterface/SdkInterface;->GetIsLog()Z

    move-result v0

    sput-boolean v0, LsdkInterface/SdkInterface;->isLog:Z

    .line 1219
    invoke-static {}, LsdkInterface/SdkInterface;->GetIsMultiDex()Z

    move-result v0

    sput-boolean v0, LsdkInterface/SdkInterface;->isMultiDex:Z
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_1c} :catch_1d

    .line 1222
    goto :goto_23

    .line 1220
    :catch_1d
    move-exception v0

    .line 1221
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "InitSdkManifestProperty error"

    invoke-static {v1, v0}, LsdkInterface/SdkInterface;->SendError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1224
    .end local v0    # "e":Ljava/io/IOException;
    :cond_23
    :goto_23
    return-void
.end method

.method public static InitSdkManifestProperty(Landroid/content/Context;)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 1199
    sget-object v0, LsdkInterface/SdkInterface;->SdkManifest:Ljava/util/Properties;

    if-nez v0, :cond_1f

    .line 1202
    :try_start_4
    const-string v0, "SdkManifest"

    invoke-static {p0, v0}, LsdkInterface/tool/PropertieTool;->getProperties(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Properties;

    move-result-object v0

    sput-object v0, LsdkInterface/SdkInterface;->SdkManifest:Ljava/util/Properties;

    .line 1203
    invoke-static {}, LsdkInterface/SdkInterface;->GetIsLog()Z

    move-result v0

    sput-boolean v0, LsdkInterface/SdkInterface;->isLog:Z

    .line 1204
    invoke-static {}, LsdkInterface/SdkInterface;->GetIsMultiDex()Z

    move-result v0

    sput-boolean v0, LsdkInterface/SdkInterface;->isMultiDex:Z
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_18} :catch_19

    .line 1208
    goto :goto_1f

    .line 1206
    :catch_19
    move-exception v0

    .line 1207
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "InitSdkManifestProperty error"

    invoke-static {v1, v0}, LsdkInterface/SdkInterface;->SendError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1210
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1f
    :goto_1f
    return-void
.end method

.method static InitShare(Lorg/json/JSONObject;)V
    .registers 7
    .param p0, "json"    # Lorg/json/JSONObject;

    .line 780
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, LsdkInterface/SdkInterface;->shareSDKList:Ljava/util/ArrayList;

    .line 782
    sget-object v0, LsdkInterface/SdkInterface;->SdkManifest:Ljava/util/Properties;

    const-string v1, "Share"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 783
    .local v0, "shareClassNameConfig":Ljava/lang/String;
    const-string v1, "\\|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 785
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

    .line 787
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2c
    array-length v3, v1

    if-ge v2, v3, :cond_51

    .line 790
    aget-object v3, v1, v2

    if-eqz v3, :cond_4e

    aget-object v3, v1, v2

    const-string v4, ""

    if-eq v3, v4, :cond_4e

    .line 793
    :try_start_39
    aget-object v3, v1, v2

    .line 794
    .local v3, "className":Ljava/lang/String;
    invoke-static {v3, p0}, LsdkInterface/SdkInterface;->GetClass(Ljava/lang/String;Lorg/json/JSONObject;)LsdkInterface/SDKBase;

    move-result-object v4

    .line 796
    .local v4, "ins":LsdkInterface/SDKBase;
    sget-object v5, LsdkInterface/SdkInterface;->shareSDKList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_44} :catch_46

    .line 799
    nop

    .end local v3    # "className":Ljava/lang/String;
    .end local v4    # "ins":LsdkInterface/SDKBase;
    goto :goto_4e

    .line 797
    :catch_46
    move-exception v3

    .line 798
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, LsdkInterface/SdkInterface;->SendError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 787
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_4e
    :goto_4e
    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    .line 802
    .end local v2    # "i":I
    :cond_51
    return-void
.end method

.method public static IsDebug()Z
    .registers 1

    .line 241
    sget-boolean v0, LsdkInterface/SdkInterface;->isLog:Z

    return v0
.end method

.method public static IsMultiDex()Z
    .registers 1

    .line 245
    sget-boolean v0, LsdkInterface/SdkInterface;->isMultiDex:Z

    return v0
.end method

.method static IsSDKExist(Ljava/lang/String;)Z
    .registers 4
    .param p0, "sdkName"    # Ljava/lang/String;

    .line 1188
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

    .line 1189
    .local v1, "temp":LsdkInterface/SDKBase;
    iget-object v2, v1, LsdkInterface/SDKBase;->SDKName:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 1191
    const/4 v0, 0x1

    return v0

    .line 1193
    .end local v1    # "temp":LsdkInterface/SDKBase;
    :cond_20
    goto :goto_a

    .line 1194
    :cond_21
    const/4 v0, 0x0

    return v0
.end method

.method static Log(Lorg/json/JSONObject;)V
    .registers 3
    .param p0, "json"    # Lorg/json/JSONObject;

    .line 584
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v1, LsdkInterface/SdkInterface;->logList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 585
    sget-object v1, LsdkInterface/SdkInterface;->logList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LsdkInterface/ILog;

    .line 586
    .local v1, "log":LsdkInterface/ILog;
    invoke-static {v1, p0}, LsdkInterface/SdkInterface;->LogLogic(LsdkInterface/ILog;Lorg/json/JSONObject;)V

    .line 584
    .end local v1    # "log":LsdkInterface/ILog;
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 588
    .end local v0    # "i":I
    :cond_17
    return-void
.end method

.method static LogLogic(LsdkInterface/ILog;Lorg/json/JSONObject;)V
    .registers 5
    .param p0, "log"    # LsdkInterface/ILog;
    .param p1, "json"    # Lorg/json/JSONObject;

    .line 593
    :try_start_0
    const-string v0, "FunctionName"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 595
    .local v0, "logFunction":Ljava/lang/String;
    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_c6

    :cond_e
    goto :goto_69

    :sswitch_f
    const-string v2, "LogRewardVirtualCurrency"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    const/4 v1, 0x6

    goto :goto_69

    :sswitch_19
    const-string v2, "LogLogin"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    const/4 v1, 0x0

    goto :goto_69

    :sswitch_23
    const-string v2, "LogEvent"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    const/4 v1, 0x2

    goto :goto_69

    :sswitch_2d
    const-string v2, "LogError"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    const/4 v1, 0x4

    goto :goto_69

    :sswitch_37
    const-string v2, "LogLoginOut"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    const/4 v1, 0x1

    goto :goto_69

    :sswitch_41
    const-string v2, "LogPurchaseVirtualCurrency"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    const/4 v1, 0x7

    goto :goto_69

    :sswitch_4b
    const-string v2, "LogUseItem"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    const/16 v1, 0x8

    goto :goto_69

    :sswitch_56
    const-string v2, "LogPaySuccess"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    const/4 v1, 0x5

    goto :goto_69

    :sswitch_60
    const-string v2, "LogPay"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    const/4 v1, 0x3

    :goto_69
    packed-switch v1, :pswitch_data_ec

    .line 624
    new-instance v1, Ljava/lang/StringBuilder;

    goto :goto_93

    .line 621
    :pswitch_6f
    invoke-interface {p0, p1}, LsdkInterface/ILog;->UseItem(Lorg/json/JSONObject;)V

    .line 622
    goto :goto_a8

    .line 618
    :pswitch_73
    invoke-interface {p0, p1}, LsdkInterface/ILog;->PurchaseVirtualCurrency(Lorg/json/JSONObject;)V

    .line 619
    goto :goto_a8

    .line 615
    :pswitch_77
    invoke-interface {p0, p1}, LsdkInterface/ILog;->RewardVirtualCurrency(Lorg/json/JSONObject;)V

    .line 616
    goto :goto_a8

    .line 612
    :pswitch_7b
    invoke-interface {p0, p1}, LsdkInterface/ILog;->LogPaySuccess(Lorg/json/JSONObject;)V

    .line 613
    goto :goto_a8

    .line 609
    :pswitch_7f
    invoke-interface {p0, p1}, LsdkInterface/ILog;->LogError(Lorg/json/JSONObject;)V

    .line 610
    goto :goto_a8

    .line 606
    :pswitch_83
    invoke-interface {p0, p1}, LsdkInterface/ILog;->LogPay(Lorg/json/JSONObject;)V

    .line 607
    goto :goto_a8

    .line 603
    :pswitch_87
    invoke-interface {p0, p1}, LsdkInterface/ILog;->OnEvent(Lorg/json/JSONObject;)V

    .line 604
    goto :goto_a8

    .line 600
    :pswitch_8b
    invoke-interface {p0, p1}, LsdkInterface/ILog;->LoginOut(Lorg/json/JSONObject;)V

    .line 601
    goto :goto_a8

    .line 597
    :pswitch_8f
    invoke-interface {p0, p1}, LsdkInterface/ILog;->Login(Lorg/json/JSONObject;)V

    .line 598
    goto :goto_a8

    .line 624
    :goto_93
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
    :try_end_a8
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_a8} :catch_a9

    .line 629
    .end local v0    # "logFunction":Ljava/lang/String;
    :goto_a8
    goto :goto_c4

    .line 627
    :catch_a9
    move-exception v0

    .line 628
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

    .line 630
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_c4
    return-void

    nop

    :sswitch_data_c6
    .sparse-switch
        -0x7803751c -> :sswitch_60
        -0x60d1fb81 -> :sswitch_56
        -0xa8c0a8a -> :sswitch_4b
        0x35a58d37 -> :sswitch_41
        0x43b0ce69 -> :sswitch_37
        0x7a720d44 -> :sswitch_2d
        0x7a73add6 -> :sswitch_23
        0x7ad32aa5 -> :sswitch_19
        0x7b9bc049 -> :sswitch_f
    .end sparse-switch

    :pswitch_data_ec
    .packed-switch 0x0
        :pswitch_8f
        :pswitch_8b
        :pswitch_87
        :pswitch_83
        :pswitch_7f
        :pswitch_7b
        :pswitch_77
        :pswitch_73
        :pswitch_6f
    .end packed-switch
.end method

.method public static Login(Lorg/json/JSONObject;)V
    .registers 6
    .param p0, "json"    # Lorg/json/JSONObject;

    .line 345
    :try_start_0
    sget-object v0, LsdkInterface/SdkInterface;->loginSDKList:Ljava/util/ArrayList;

    invoke-static {p0, v0}, LsdkInterface/SdkInterface;->GetSDK(Lorg/json/JSONObject;Ljava/util/ArrayList;)LsdkInterface/SDKBase;

    move-result-object v0

    check-cast v0, LsdkInterface/ILogin;

    .line 346
    .local v0, "login":LsdkInterface/ILogin;
    const-string v1, "FunctionName"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 348
    .local v1, "functionName":Ljava/lang/String;
    const/4 v2, 0x0

    if-eqz v0, :cond_54

    .line 350
    const-string v3, "Login"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 352
    invoke-interface {v0, p0}, LsdkInterface/ILogin;->Login(Lorg/json/JSONObject;)V

    goto :goto_6e

    .line 354
    :cond_1d
    const-string v3, "LoginOut"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 356
    invoke-interface {v0, p0}, LsdkInterface/ILogin;->LoginOut(Lorg/json/JSONObject;)V

    goto :goto_6e

    .line 360
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

    .line 365
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

    .line 371
    .end local v0    # "login":LsdkInterface/ILogin;
    .end local v1    # "functionName":Ljava/lang/String;
    :goto_6e
    goto :goto_77

    .line 368
    :catch_6f
    move-exception v0

    .line 370
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, LsdkInterface/SdkInterface;->SendError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 372
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_77
    return-void
.end method

.method public static OnApplicationCreate()V
    .registers 3

    .line 893
    const-string v0, "SDKInterface OnApplicationCreate "

    invoke-static {v0}, LsdkInterface/SdkInterface;->SendLog(Ljava/lang/String;)V

    .line 895
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

    .line 897
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;LsdkInterface/SDKBase;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LsdkInterface/SDKBase;

    invoke-virtual {v2}, LsdkInterface/SDKBase;->OnApplicationCreate()V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_24} :catch_26

    .line 898
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;LsdkInterface/SDKBase;>;"
    goto :goto_f

    .line 903
    :cond_25
    goto :goto_41

    .line 900
    :catch_26
    move-exception v0

    .line 902
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

    .line 904
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_41
    return-void
.end method

.method public static OnCreate(Landroid/os/Bundle;)V
    .registers 4
    .param p0, "bundle"    # Landroid/os/Bundle;

    .line 951
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

    .line 953
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;LsdkInterface/SDKBase;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LsdkInterface/SDKBase;

    invoke-virtual {v2}, LsdkInterface/SDKBase;->OnCreate()V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1f} :catch_21

    .line 954
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;LsdkInterface/SDKBase;>;"
    goto :goto_a

    .line 959
    :cond_20
    goto :goto_3c

    .line 956
    :catch_21
    move-exception v0

    .line 958
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

    .line 960
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3c
    return-void
.end method

.method public static OnDestroy()V
    .registers 3

    .line 994
    const-string v0, "SDKInterBase OnDestroy "

    invoke-static {v0}, LsdkInterface/SdkInterface;->SendLog(Ljava/lang/String;)V

    .line 996
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

    .line 998
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;LsdkInterface/SDKBase;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LsdkInterface/SDKBase;

    invoke-virtual {v2}, LsdkInterface/SDKBase;->OnDestroy()V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_24} :catch_26

    .line 999
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;LsdkInterface/SDKBase;>;"
    goto :goto_f

    .line 1004
    :cond_25
    goto :goto_41

    .line 1001
    :catch_26
    move-exception v0

    .line 1003
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

    .line 1005
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_41
    return-void
.end method

.method public static OnNewIntent(Landroid/content/Intent;)V
    .registers 4
    .param p0, "intent"    # Landroid/content/Intent;

    .line 1069
    const-string v0, "SDKInterBase OnNewIntent "

    invoke-static {v0}, LsdkInterface/SdkInterface;->SendLog(Ljava/lang/String;)V

    .line 1071
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

    .line 1073
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;LsdkInterface/SDKBase;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LsdkInterface/SDKBase;

    invoke-virtual {v2, p0}, LsdkInterface/SDKBase;->OnNewIntent(Landroid/content/Intent;)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_24} :catch_26

    .line 1074
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;LsdkInterface/SDKBase;>;"
    goto :goto_f

    .line 1079
    :cond_25
    goto :goto_41

    .line 1076
    :catch_26
    move-exception v0

    .line 1078
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

    .line 1080
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_41
    return-void
.end method

.method public static OnPause()V
    .registers 3

    .line 1009
    const-string v0, "SDKInterBase OnPause "

    invoke-static {v0}, LsdkInterface/SdkInterface;->SendLog(Ljava/lang/String;)V

    .line 1011
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

    .line 1013
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;LsdkInterface/SDKBase;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LsdkInterface/SDKBase;

    invoke-virtual {v2}, LsdkInterface/SDKBase;->OnPause()V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_24} :catch_26

    .line 1014
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;LsdkInterface/SDKBase;>;"
    goto :goto_f

    .line 1019
    :cond_25
    goto :goto_41

    .line 1016
    :catch_26
    move-exception v0

    .line 1018
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

    .line 1020
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_41
    return-void
.end method

.method public static OnRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 6
    .param p0, "requestCode"    # I
    .param p1, "permissions"    # [Ljava/lang/String;
    .param p2, "grantResults"    # [I

    .line 1054
    const-string v0, "SDKInterBase OnRequestPermissionsResult "

    invoke-static {v0}, LsdkInterface/SdkInterface;->SendLog(Ljava/lang/String;)V

    .line 1056
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

    .line 1058
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;LsdkInterface/SDKBase;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LsdkInterface/SDKBase;

    invoke-virtual {v2, p0, p1, p2}, LsdkInterface/SDKBase;->OnRequestPermissionsResult(I[Ljava/lang/String;[I)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_24} :catch_26

    .line 1059
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;LsdkInterface/SDKBase;>;"
    goto :goto_f

    .line 1064
    :cond_25
    goto :goto_41

    .line 1061
    :catch_26
    move-exception v0

    .line 1063
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

    .line 1065
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_41
    return-void
.end method

.method public static OnRestart()V
    .registers 3

    .line 979
    const-string v0, "SDKInterBase OnStart "

    invoke-static {v0}, LsdkInterface/SdkInterface;->SendLog(Ljava/lang/String;)V

    .line 981
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

    .line 983
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;LsdkInterface/SDKBase;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LsdkInterface/SDKBase;

    invoke-virtual {v2}, LsdkInterface/SDKBase;->OnRestart()V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_24} :catch_26

    .line 984
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;LsdkInterface/SDKBase;>;"
    goto :goto_f

    .line 989
    :cond_25
    goto :goto_41

    .line 986
    :catch_26
    move-exception v0

    .line 988
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

    .line 990
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_41
    return-void
.end method

.method public static OnResume()V
    .registers 3

    .line 1039
    const-string v0, "SDKInterBase OnResume "

    invoke-static {v0}, LsdkInterface/SdkInterface;->SendLog(Ljava/lang/String;)V

    .line 1041
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

    .line 1043
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;LsdkInterface/SDKBase;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LsdkInterface/SDKBase;

    invoke-virtual {v2}, LsdkInterface/SDKBase;->OnResume()V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_24} :catch_26

    .line 1044
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;LsdkInterface/SDKBase;>;"
    goto :goto_f

    .line 1049
    :cond_25
    goto :goto_41

    .line 1046
    :catch_26
    move-exception v0

    .line 1048
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

    .line 1050
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_41
    return-void
.end method

.method public static OnStart()V
    .registers 3

    .line 964
    const-string v0, "SDKInterBase OnStart "

    invoke-static {v0}, LsdkInterface/SdkInterface;->SendLog(Ljava/lang/String;)V

    .line 966
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

    .line 968
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;LsdkInterface/SDKBase;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LsdkInterface/SDKBase;

    invoke-virtual {v2}, LsdkInterface/SDKBase;->OnStart()V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_24} :catch_26

    .line 969
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;LsdkInterface/SDKBase;>;"
    goto :goto_f

    .line 974
    :cond_25
    goto :goto_41

    .line 971
    :catch_26
    move-exception v0

    .line 973
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

    .line 975
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_41
    return-void
.end method

.method public static OnStop()V
    .registers 3

    .line 1024
    const-string v0, "SDKInterBase OnStop "

    invoke-static {v0}, LsdkInterface/SdkInterface;->SendLog(Ljava/lang/String;)V

    .line 1026
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

    .line 1028
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;LsdkInterface/SDKBase;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LsdkInterface/SDKBase;

    invoke-virtual {v2}, LsdkInterface/SDKBase;->OnStop()V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_24} :catch_26

    .line 1029
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;LsdkInterface/SDKBase;>;"
    goto :goto_f

    .line 1034
    :cond_25
    goto :goto_41

    .line 1031
    :catch_26
    move-exception v0

    .line 1033
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

    .line 1035
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_41
    return-void
.end method

.method static Other(Lorg/json/JSONObject;)V
    .registers 9
    .param p0, "json"    # Lorg/json/JSONObject;

    .line 1140
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

    .line 1142
    :try_start_1c
    const-string v1, "FunctionName"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1143
    .local v1, "functionName":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1145
    .local v2, "sdkName":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 1147
    sget-object v0, LsdkInterface/SdkInterface;->otherSDKList:Ljava/util/ArrayList;

    invoke-static {p0, v0}, LsdkInterface/SdkInterface;->GetSDK(Lorg/json/JSONObject;Ljava/util/ArrayList;)LsdkInterface/SDKBase;

    move-result-object v0

    check-cast v0, LsdkInterface/IOther;

    .line 1148
    .local v0, "other":LsdkInterface/IOther;
    invoke-interface {v0, p0}, LsdkInterface/IOther;->Other(Lorg/json/JSONObject;)V

    .line 1149
    .end local v0    # "other":LsdkInterface/IOther;
    goto :goto_98

    .line 1152
    :cond_38
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_39
    sget-object v3, LsdkInterface/SdkInterface;->otherSDKList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_98

    .line 1153
    sget-object v3, LsdkInterface/SdkInterface;->otherSDKList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LsdkInterface/IOther;

    .line 1154
    .local v3, "other":LsdkInterface/IOther;
    invoke-interface {v3}, LsdkInterface/IOther;->GetFunctionName()[Ljava/lang/String;

    move-result-object v4

    .line 1155
    .local v4, "fs":[Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_4e
    array-length v6, v4

    if-ge v5, v6, :cond_95

    .line 1157
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

    .line 1159
    aget-object v6, v4, v5

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_92

    .line 1161
    invoke-interface {v3, p0}, LsdkInterface/IOther;->Other(Lorg/json/JSONObject;)V
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_92} :catch_99

    .line 1155
    :cond_92
    add-int/lit8 v5, v5, 0x1

    goto :goto_4e

    .line 1152
    .end local v3    # "other":LsdkInterface/IOther;
    .end local v4    # "fs":[Ljava/lang/String;
    .end local v5    # "j":I
    :cond_95
    add-int/lit8 v0, v0, 0x1

    goto :goto_39

    .line 1169
    .end local v0    # "i":I
    .end local v1    # "functionName":Ljava/lang/String;
    .end local v2    # "sdkName":Ljava/lang/String;
    :cond_98
    :goto_98
    goto :goto_b4

    .line 1166
    :catch_99
    move-exception v0

    .line 1168
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

    .line 1170
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_b4
    return-void
.end method

.method static Pay(Lorg/json/JSONObject;)V
    .registers 5
    .param p0, "json"    # Lorg/json/JSONObject;

    .line 406
    :try_start_0
    sget-object v0, LsdkInterface/SdkInterface;->paySDKList:Ljava/util/ArrayList;

    invoke-static {p0, v0}, LsdkInterface/SdkInterface;->GetSDK(Lorg/json/JSONObject;Ljava/util/ArrayList;)LsdkInterface/SDKBase;

    move-result-object v0

    check-cast v0, LsdkInterface/IPay;

    .line 407
    .local v0, "pay":LsdkInterface/IPay;
    if-eqz v0, :cond_7b

    .line 409
    const-string v1, "FunctionName"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 411
    .local v1, "function":Ljava/lang/String;
    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_ae

    :cond_18
    goto :goto_36

    :sswitch_19
    const-string v3, "ClearPurchase"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    const/4 v2, 0x1

    goto :goto_36

    :sswitch_23
    const-string v3, "GetGoodsInfo"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    const/4 v2, 0x0

    goto :goto_36

    :sswitch_2d
    const-string v3, "OnPay"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    const/4 v2, 0x2

    :goto_36
    packed-switch v2, :pswitch_data_bc

    .line 429
    new-instance v2, Ljava/lang/StringBuilder;

    goto :goto_5c

    .line 426
    :pswitch_3c
    invoke-interface {v0, p0}, LsdkInterface/IPay;->Pay(Lorg/json/JSONObject;)V

    .line 427
    goto :goto_7a

    .line 423
    :pswitch_40
    invoke-interface {v0, p0}, LsdkInterface/IPay;->ClearPurchase(Lorg/json/JSONObject;)V

    .line 424
    goto :goto_7a

    .line 415
    :pswitch_44
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_45
    sget-object v3, LsdkInterface/SdkInterface;->paySDKList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_5b

    .line 417
    sget-object v3, LsdkInterface/SdkInterface;->paySDKList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LsdkInterface/IPay;

    .line 418
    .local v3, "tmp":LsdkInterface/IPay;
    invoke-interface {v3, p0}, LsdkInterface/IPay;->GetGoodsInfo(Lorg/json/JSONObject;)V

    .line 415
    .end local v3    # "tmp":LsdkInterface/IPay;
    add-int/lit8 v2, v2, 0x1

    goto :goto_45

    .line 421
    .end local v2    # "i":I
    :cond_5b
    goto :goto_7a

    .line 429
    :goto_5c
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

    .line 431
    .end local v1    # "function":Ljava/lang/String;
    :goto_7a
    goto :goto_91

    .line 433
    :cond_7b
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
    :try_end_91
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_91} :catch_92

    .line 439
    .end local v0    # "pay":LsdkInterface/IPay;
    :goto_91
    goto :goto_ad

    .line 436
    :catch_92
    move-exception v0

    .line 438
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

    .line 440
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_ad
    return-void

    :sswitch_data_ae
    .sparse-switch
        0x48c7a29 -> :sswitch_2d
        0x5c539a8e -> :sswitch_23
        0x6b87b24e -> :sswitch_19
    .end sparse-switch

    :pswitch_data_bc
    .packed-switch 0x0
        :pswitch_44
        :pswitch_40
        :pswitch_3c
    .end packed-switch
.end method

.method static RealName(Lorg/json/JSONObject;)V
    .registers 6
    .param p0, "json"    # Lorg/json/JSONObject;

    .line 639
    :try_start_0
    sget-object v0, LsdkInterface/SdkInterface;->realNameSDKList:Ljava/util/ArrayList;

    invoke-static {p0, v0}, LsdkInterface/SdkInterface;->GetSDK(Lorg/json/JSONObject;Ljava/util/ArrayList;)LsdkInterface/SDKBase;

    move-result-object v0

    check-cast v0, LsdkInterface/IRealName;

    .line 640
    .local v0, "realName":LsdkInterface/IRealName;
    const/4 v1, 0x0

    if-eqz v0, :cond_7a

    .line 642
    const-string v2, "FunctionName"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 643
    .local v2, "functionName":Ljava/lang/String;
    const/4 v3, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_b8

    :cond_19
    goto :goto_4b

    :sswitch_1a
    const-string v4, "OnLogout"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    const/4 v3, 0x4

    goto :goto_4b

    :sswitch_24
    const-string v4, "LogPayAmount"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    const/4 v3, 0x1

    goto :goto_4b

    :sswitch_2e
    const-string v4, "OnLogin"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    const/4 v3, 0x3

    goto :goto_4b

    :sswitch_38
    const-string v4, "CheckPayLimit"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    const/4 v3, 0x2

    goto :goto_4b

    :sswitch_42
    const-string v4, "StartRealNameAttestation"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    const/4 v3, 0x0

    :goto_4b
    packed-switch v3, :pswitch_data_ce

    .line 657
    new-instance v3, Ljava/lang/StringBuilder;

    goto :goto_65

    .line 654
    :pswitch_51
    invoke-interface {v0}, LsdkInterface/IRealName;->OnLogout()V

    .line 655
    goto :goto_79

    .line 652
    :pswitch_55
    invoke-interface {v0, p0}, LsdkInterface/IRealName;->OnLogin(Lorg/json/JSONObject;)V

    goto :goto_79

    .line 650
    :pswitch_59
    invoke-interface {v0, p0}, LsdkInterface/IRealName;->CheckPayLimit(Lorg/json/JSONObject;)V

    goto :goto_79

    .line 648
    :pswitch_5d
    invoke-interface {v0, p0}, LsdkInterface/IRealName;->LogPayAmount(Lorg/json/JSONObject;)V

    goto :goto_79

    .line 646
    :pswitch_61
    invoke-interface {v0}, LsdkInterface/IRealName;->StartRealNameAttestation()V

    goto :goto_79

    .line 657
    :goto_65
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not find RealName Function "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, LsdkInterface/SdkInterface;->SendError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 659
    .end local v2    # "functionName":Ljava/lang/String;
    :goto_79
    goto :goto_94

    .line 662
    :cond_7a
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
    :try_end_94
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_94} :catch_95

    .line 667
    .end local v0    # "realName":LsdkInterface/IRealName;
    :goto_94
    goto :goto_b6

    .line 665
    :catch_95
    move-exception v0

    .line 666
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

    .line 668
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_b6
    return-void

    nop

    :sswitch_data_b8
    .sparse-switch
        -0x34fd61db -> :sswitch_42
        0x1026c4fb -> :sswitch_38
        0x13245caa -> :sswitch_2e
        0x49190c5c -> :sswitch_24
        0x51675069 -> :sswitch_1a
    .end sparse-switch

    :pswitch_data_ce
    .packed-switch 0x0
        :pswitch_61
        :pswitch_5d
        :pswitch_59
        :pswitch_55
        :pswitch_51
    .end packed-switch
.end method

.method static RealNameBool(Lorg/json/JSONObject;)Z
    .registers 9
    .param p0, "json"    # Lorg/json/JSONObject;

    .line 672
    const/4 v0, 0x1

    :try_start_1
    sget-object v1, LsdkInterface/SdkInterface;->realNameSDKList:Ljava/util/ArrayList;

    invoke-static {p0, v1}, LsdkInterface/SdkInterface;->GetSDK(Lorg/json/JSONObject;Ljava/util/ArrayList;)LsdkInterface/SDKBase;

    move-result-object v1

    check-cast v1, LsdkInterface/IRealName;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_9} :catch_9a

    .line 673
    .local v1, "realName":LsdkInterface/IRealName;
    const/4 v2, 0x0

    const-string v3, "IsAdult"

    const/4 v4, -0x1

    const-string v5, "FunctionName"

    const/4 v6, 0x0

    if-eqz v1, :cond_52

    .line 675
    :try_start_12
    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 676
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

    .line 689
    new-instance v3, Ljava/lang/StringBuilder;

    goto :goto_3d

    .line 679
    :pswitch_2b
    invoke-interface {v1}, LsdkInterface/IRealName;->GetRealNameType()LsdkInterface/define/RealNameStatus;

    move-result-object v2

    sget-object v3, LsdkInterface/define/RealNameStatus;->NotNeed:LsdkInterface/define/RealNameStatus;

    invoke-virtual {v2, v3}, LsdkInterface/define/RealNameStatus;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 682
    return v0

    .line 686
    :cond_38
    invoke-interface {v1}, LsdkInterface/IRealName;->IsAdult()Z

    move-result v0

    return v0

    .line 689
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

    .line 690
    return v0

    .line 695
    .end local v5    # "functionName":Ljava/lang/String;
    :cond_52
    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 696
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

    .line 708
    new-instance v3, Ljava/lang/StringBuilder;

    goto :goto_81

    .line 703
    :pswitch_75
    const-string v2, "Not find RealNameBool Class+ RealName_FunctionName_CheckPayLimit is false"

    invoke-static {v2}, LsdkInterface/SdkInterface;->SendLog(Ljava/lang/String;)V

    .line 704
    return v6

    .line 699
    :pswitch_7b
    const-string v2, "Not find RealNameBool Class+ RealName_FunctionName_IsAdult is true"

    invoke-static {v2}, LsdkInterface/SdkInterface;->SendLog(Ljava/lang/String;)V

    .line 700
    return v0

    .line 708
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

    .line 709
    return v0

    .line 712
    .end local v1    # "realName":LsdkInterface/IRealName;
    .end local v5    # "functionName":Ljava/lang/String;
    :catch_9a
    move-exception v1

    .line 713
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

    .line 714
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

    .line 748
    const/4 v0, -0x1

    :try_start_1
    sget-object v1, LsdkInterface/SdkInterface;->realNameSDKList:Ljava/util/ArrayList;

    invoke-static {p0, v1}, LsdkInterface/SdkInterface;->GetSDK(Lorg/json/JSONObject;Ljava/util/ArrayList;)LsdkInterface/SDKBase;

    move-result-object v1

    check-cast v1, LsdkInterface/IRealName;

    .line 749
    .local v1, "realName":LsdkInterface/IRealName;
    const/4 v2, 0x0

    if-eqz v1, :cond_45

    .line 751
    const-string v3, "FunctionName"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 752
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

    .line 758
    new-instance v4, Ljava/lang/StringBuilder;

    goto :goto_30

    .line 755
    :pswitch_2b
    invoke-interface {v1}, LsdkInterface/IRealName;->GetTodayOnlineTime()I

    move-result v0

    return v0

    .line 758
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

    .line 759
    return v0

    .line 764
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

    .line 765
    return v0

    .line 768
    .end local v1    # "realName":LsdkInterface/IRealName;
    :catch_60
    move-exception v1

    .line 769
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

    .line 770
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

    .line 720
    :try_start_0
    sget-object v0, LsdkInterface/SdkInterface;->realNameSDKList:Ljava/util/ArrayList;

    invoke-static {p0, v0}, LsdkInterface/SdkInterface;->GetSDK(Lorg/json/JSONObject;Ljava/util/ArrayList;)LsdkInterface/SDKBase;

    move-result-object v0

    check-cast v0, LsdkInterface/IRealName;

    .line 721
    .local v0, "realName":LsdkInterface/IRealName;
    const/4 v1, 0x0

    if-eqz v0, :cond_4d

    .line 723
    const-string v2, "FunctionName"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 724
    .local v2, "functionName":Ljava/lang/String;
    const/4 v3, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    packed-switch v4, :pswitch_data_96

    :cond_19
    goto :goto_23

    :pswitch_1a
    const-string v4, "GetRealNameType"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    const/4 v3, 0x0

    :goto_23
    packed-switch v3, :pswitch_data_9c

    .line 730
    new-instance v3, Ljava/lang/StringBuilder;

    goto :goto_32

    .line 727
    :pswitch_29
    invoke-interface {v0}, LsdkInterface/IRealName;->GetRealNameType()LsdkInterface/define/RealNameStatus;

    move-result-object v1

    invoke-virtual {v1}, LsdkInterface/define/RealNameStatus;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 730
    :goto_32
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not find RealNameString Function "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, LsdkInterface/SdkInterface;->SendError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 731
    sget-object v1, LsdkInterface/define/RealNameStatus;->NotNeed:LsdkInterface/define/RealNameStatus;

    invoke-virtual {v1}, LsdkInterface/define/RealNameStatus;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 736
    .end local v2    # "functionName":Ljava/lang/String;
    :cond_4d
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

    .line 737
    sget-object v1, LsdkInterface/define/RealNameStatus;->NotNeed:LsdkInterface/define/RealNameStatus;

    invoke-virtual {v1}, LsdkInterface/define/RealNameStatus;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6d} :catch_6e

    return-object v1

    .line 740
    .end local v0    # "realName":LsdkInterface/IRealName;
    :catch_6e
    move-exception v0

    .line 741
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

    .line 742
    sget-object v1, LsdkInterface/define/RealNameStatus;->NotNeed:LsdkInterface/define/RealNameStatus;

    invoke-virtual {v1}, LsdkInterface/define/RealNameStatus;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_data_96
    .packed-switch -0x20e23587
        :pswitch_1a
    .end packed-switch

    :pswitch_data_9c
    .packed-switch 0x0
        :pswitch_29
    .end packed-switch
.end method

.method public static SendError(Ljava/lang/String;)V
    .registers 7
    .param p0, "errorContent"    # Ljava/lang/String;

    .line 214
    const-string v0, "<-"

    const-string v1, "Unity"

    :try_start_4
    sget-boolean v2, LsdkInterface/SdkInterface;->isLog:Z

    if-eqz v2, :cond_22

    .line 216
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

    .line 219
    :cond_22
    sget-object v2, LsdkInterface/SdkInterface;->isCallBack:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 221
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 222
    .local v2, "jo":Lorg/json/JSONObject;
    const-string v3, "ModuleName"

    const-string v4, "Debug"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 223
    const-string v3, "FunctionName"

    const-string v4, "OnError"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 224
    const-string v3, "Content"

    invoke-virtual {v2, v3, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 226
    const-string v3, "CallBackObject"

    const-string v4, "OnSDKCallBack"

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4d} :catch_4e

    .line 236
    .end local v2    # "jo":Lorg/json/JSONObject;
    :cond_4d
    goto :goto_7f

    .line 230
    :catch_4e
    move-exception v2

    .line 232
    .local v2, "ex":Ljava/lang/Exception;
    sget-boolean v3, LsdkInterface/SdkInterface;->isLog:Z

    if-eqz v3, :cond_7f

    .line 234
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

    .line 237
    .end local v2    # "ex":Ljava/lang/Exception;
    :cond_7f
    :goto_7f
    return-void
.end method

.method public static SendError(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 4
    .param p0, "errorContent"    # Ljava/lang/String;
    .param p1, "e"    # Ljava/lang/Exception;

    .line 207
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

    .line 208
    return-void
.end method

.method public static SendLog(Ljava/lang/String;)V
    .registers 7
    .param p0, "LogContent"    # Ljava/lang/String;

    .line 250
    sget-boolean v0, LsdkInterface/SdkInterface;->isLog:Z

    if-eqz v0, :cond_6d

    .line 252
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

    .line 256
    :try_start_22
    sget-object v0, LsdkInterface/SdkInterface;->isCallBack:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 257
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 258
    .local v0, "jo":Lorg/json/JSONObject;
    const-string v3, "ModuleName"

    const-string v4, "Debug"

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 259
    const-string v3, "FunctionName"

    const-string v4, "OnLog"

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 260
    const-string v3, "Content"

    invoke-virtual {v0, v3, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 262
    const-string v3, "CallBackObject"

    const-string v4, "OnSDKCallBack"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_4d} :catch_4e

    .line 268
    .end local v0    # "jo":Lorg/json/JSONObject;
    :cond_4d
    goto :goto_6d

    .line 265
    :catch_4e
    move-exception v0

    .line 267
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

    .line 270
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_6d
    :goto_6d
    return-void
.end method

.method public static SendMessage(Ljava/lang/String;)V
    .registers 3
    .param p0, "content"    # Ljava/lang/String;

    .line 189
    sget-boolean v0, LsdkInterface/SdkInterface;->isLog:Z

    if-eqz v0, :cond_22

    .line 191
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

    .line 194
    :cond_22
    sget-object v0, LsdkInterface/SdkInterface;->isCallBack:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 196
    const-string v0, "CallBackObject"

    const-string v1, "OnSDKCallBack"

    invoke-static {v0, v1, p0}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    :cond_31
    return-void
.end method

.method public static SendMessage(Lorg/json/JSONObject;)V
    .registers 2
    .param p0, "json"    # Lorg/json/JSONObject;

    .line 202
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LsdkInterface/SdkInterface;->SendMessage(Ljava/lang/String;)V

    .line 203
    return-void
.end method

.method public static SetActivityCallBack(ILsdkInterface/tool/ActResultRequest$Callback;)V
    .registers 3
    .param p0, "requestCode"    # I
    .param p1, "callback"    # LsdkInterface/tool/ActResultRequest$Callback;

    .line 865
    sget-object v0, LsdkInterface/SdkInterface;->sCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v0, p0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 866
    return-void
.end method

.method public static Share(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p0, "json"    # Lorg/json/JSONObject;
    .param p1, "thumbImage"    # Ljava/lang/String;
    .param p2, "image"    # Ljava/lang/String;

    .line 807
    :try_start_0
    sget-object v0, LsdkInterface/SdkInterface;->shareSDKList:Ljava/util/ArrayList;

    invoke-static {p0, v0}, LsdkInterface/SdkInterface;->GetSDK(Lorg/json/JSONObject;Ljava/util/ArrayList;)LsdkInterface/SDKBase;

    move-result-object v0

    check-cast v0, LsdkInterface/IShare;

    .line 808
    .local v0, "share":LsdkInterface/IShare;
    if-eqz v0, :cond_14

    .line 810
    const-string v1, "FunctionName"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 811
    .local v1, "function":Ljava/lang/String;
    invoke-interface {v0, p0, p1, p2}, LsdkInterface/IShare;->Share(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 812
    .end local v1    # "function":Ljava/lang/String;
    goto :goto_2a

    .line 814
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

    .line 820
    .end local v0    # "share":LsdkInterface/IShare;
    :goto_2a
    goto :goto_46

    .line 817
    :catch_2b
    move-exception v0

    .line 819
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

    .line 821
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_46
    return-void
.end method

.method public static UnityRequestFunction(Ljava/lang/String;)V
    .registers 7
    .param p0, "content"    # Ljava/lang/String;

    .line 49
    const-string v0, "<-"

    const/4 v1, 0x1

    :try_start_3
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    sput-object v2, LsdkInterface/SdkInterface;->isCallBack:Ljava/lang/Boolean;

    .line 50
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

    .line 52
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 53
    .local v2, "json":Lorg/json/JSONObject;
    const-string v3, "ModuleName"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 55
    .local v3, "moduleName":Ljava/lang/String;
    const/4 v4, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_e0

    :cond_36
    goto :goto_7c

    :sswitch_37
    const-string v1, "Other"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36

    const/4 v1, 0x5

    goto :goto_7d

    :sswitch_41
    const-string v5, "Login"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_36

    goto :goto_7d

    :sswitch_4a
    const-string v1, "Init"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36

    const/4 v1, 0x0

    goto :goto_7d

    :sswitch_54
    const-string v1, "Pay"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36

    const/4 v1, 0x4

    goto :goto_7d

    :sswitch_5e
    const-string v1, "Log"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36

    const/4 v1, 0x2

    goto :goto_7d

    :sswitch_68
    const-string v1, "AD"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36

    const/4 v1, 0x3

    goto :goto_7d

    :sswitch_72
    const-string v1, "RealName"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36

    const/4 v1, 0x6

    goto :goto_7d

    :goto_7c
    const/4 v1, -0x1

    :goto_7d
    packed-switch v1, :pswitch_data_fe

    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    goto :goto_9f

    .line 64
    :pswitch_83
    invoke-static {v2}, LsdkInterface/SdkInterface;->RealName(Lorg/json/JSONObject;)V

    goto :goto_b8

    .line 63
    :pswitch_87
    invoke-static {v2}, LsdkInterface/SdkInterface;->Other(Lorg/json/JSONObject;)V

    goto :goto_b8

    .line 61
    :pswitch_8b
    invoke-static {v2}, LsdkInterface/SdkInterface;->Pay(Lorg/json/JSONObject;)V

    goto :goto_b8

    .line 60
    :pswitch_8f
    invoke-static {v2}, LsdkInterface/SdkInterface;->AD(Lorg/json/JSONObject;)V

    goto :goto_b8

    .line 59
    :pswitch_93
    invoke-static {v2}, LsdkInterface/SdkInterface;->Log(Lorg/json/JSONObject;)V

    goto :goto_b8

    .line 58
    :pswitch_97
    invoke-static {v2}, LsdkInterface/SdkInterface;->Login(Lorg/json/JSONObject;)V

    goto :goto_b8

    .line 57
    :pswitch_9b
    invoke-static {v2}, LsdkInterface/SdkInterface;->Init(Lorg/json/JSONObject;)V

    goto :goto_b8

    .line 65
    :goto_9f
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
    :try_end_b8
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_b8} :catch_b9

    .line 71
    .end local v2    # "json":Lorg/json/JSONObject;
    .end local v3    # "moduleName":Ljava/lang/String;
    :goto_b8
    goto :goto_de

    .line 68
    :catch_b9
    move-exception v0

    .line 70
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

    .line 72
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_de
    return-void

    nop

    :sswitch_data_e0
    .sparse-switch
        -0x2f6d5297 -> :sswitch_72
        0x823 -> :sswitch_68
        0x12b24 -> :sswitch_5e
        0x13888 -> :sswitch_54
        0x22d930 -> :sswitch_4a
        0x462ff49 -> :sswitch_41
        0x48f8ef0 -> :sswitch_37
    .end sparse-switch

    :pswitch_data_fe
    .packed-switch 0x0
        :pswitch_9b
        :pswitch_97
        :pswitch_93
        :pswitch_8f
        :pswitch_8b
        :pswitch_87
        :pswitch_83
    .end packed-switch
.end method

.method public static UnityRequestFunctionBool(Ljava/lang/String;)Z
    .registers 7
    .param p0, "content"    # Ljava/lang/String;

    .line 133
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

    .line 135
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 136
    .local v2, "json":Lorg/json/JSONObject;
    const-string v3, "ModuleName"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 138
    .local v3, "functionName":Ljava/lang/String;
    const/4 v4, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    packed-switch v5, :pswitch_data_86

    :cond_30
    goto :goto_3a

    :pswitch_31
    const-string v5, "RealName"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_30

    const/4 v4, 0x0

    :goto_3a
    packed-switch v4, :pswitch_data_8c

    .line 141
    new-instance v4, Ljava/lang/StringBuilder;

    goto :goto_45

    .line 140
    :pswitch_40
    invoke-static {v2}, LsdkInterface/SdkInterface;->RealNameBool(Lorg/json/JSONObject;)Z

    move-result v0

    return v0

    .line 141
    :goto_45
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
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_5e} :catch_5f

    return v1

    .line 145
    .end local v2    # "json":Lorg/json/JSONObject;
    .end local v3    # "functionName":Ljava/lang/String;
    :catch_5f
    move-exception v0

    .line 147
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

    .line 148
    return v1

    nop

    :pswitch_data_86
    .packed-switch -0x2f6d5297
        :pswitch_31
    .end packed-switch

    :pswitch_data_8c
    .packed-switch 0x0
        :pswitch_40
    .end packed-switch
.end method

.method public static UnityRequestFunctionInt(Ljava/lang/String;)I
    .registers 7
    .param p0, "content"    # Ljava/lang/String;

    .line 79
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

    .line 81
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 82
    .local v2, "json":Lorg/json/JSONObject;
    const-string v3, "ModuleName"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 84
    .local v3, "moduleName":Ljava/lang/String;
    const/4 v4, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    packed-switch v5, :pswitch_data_82

    :cond_30
    goto :goto_3a

    :pswitch_31
    const-string v5, "RealName"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_30

    const/4 v4, 0x0

    :goto_3a
    packed-switch v4, :pswitch_data_88

    .line 89
    new-instance v4, Ljava/lang/StringBuilder;

    goto :goto_41

    .line 87
    :pswitch_40
    return v1

    .line 89
    :goto_41
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
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_5a} :catch_5b

    .line 90
    return v1

    .line 93
    .end local v2    # "json":Lorg/json/JSONObject;
    .end local v3    # "moduleName":Ljava/lang/String;
    :catch_5b
    move-exception v0

    .line 95
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

    .line 96
    return v1

    nop

    :pswitch_data_82
    .packed-switch -0x2f6d5297
        :pswitch_31
    .end packed-switch

    :pswitch_data_88
    .packed-switch 0x0
        :pswitch_40
    .end packed-switch
.end method

.method public static UnityRequestFunctionString(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "content"    # Ljava/lang/String;

    .line 105
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

    .line 107
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 108
    .local v2, "json":Lorg/json/JSONObject;
    const-string v3, "ModuleName"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 110
    .local v3, "moduleName":Ljava/lang/String;
    const/4 v4, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_94

    :cond_31
    goto :goto_45

    :sswitch_32
    const-string v5, "Other"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_31

    const/4 v4, 0x0

    goto :goto_45

    :sswitch_3c
    const-string v5, "RealName"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_31

    const/4 v4, 0x1

    :goto_45
    packed-switch v4, :pswitch_data_9e

    .line 117
    new-instance v4, Ljava/lang/StringBuilder;

    goto :goto_53

    .line 115
    :pswitch_4b
    invoke-static {v2}, LsdkInterface/SdkInterface;->RealNameString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 113
    :pswitch_50
    const-string v0, ""

    return-object v0

    .line 117
    :goto_53
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
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_6c} :catch_6d

    .line 118
    return-object v1

    .line 121
    .end local v2    # "json":Lorg/json/JSONObject;
    .end local v3    # "moduleName":Ljava/lang/String;
    :catch_6d
    move-exception v0

    .line 123
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

    .line 124
    return-object v1

    nop

    :sswitch_data_94
    .sparse-switch
        -0x2f6d5297 -> :sswitch_3c
        0x48f8ef0 -> :sswitch_32
    .end sparse-switch

    :pswitch_data_9e
    .packed-switch 0x0
        :pswitch_50
        :pswitch_4b
    .end packed-switch
.end method

.method public static onActivityResult(IILandroid/content/Intent;)V
    .registers 7
    .param p0, "requestCode"    # I
    .param p1, "resultCode"    # I
    .param p2, "data"    # Landroid/content/Intent;

    .line 870
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

    .line 872
    sget-object v0, LsdkInterface/SdkInterface;->sCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LsdkInterface/tool/ActResultRequest$Callback;

    .line 873
    .local v0, "callback":LsdkInterface/tool/ActResultRequest$Callback;
    sget-object v1, LsdkInterface/SdkInterface;->sCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->remove(I)V

    .line 875
    if-eqz v0, :cond_32

    .line 876
    invoke-interface {v0, p0, p1, p2}, LsdkInterface/tool/ActResultRequest$Callback;->onActivityResult(IILandroid/content/Intent;)V

    .line 880
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

    .line 882
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;LsdkInterface/SDKBase;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LsdkInterface/SDKBase;

    invoke-virtual {v3, p0, p1, p2}, LsdkInterface/SDKBase;->OnActivityResult(IILandroid/content/Intent;)V
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_51} :catch_53

    .line 883
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;LsdkInterface/SDKBase;>;"
    goto :goto_3c

    .line 888
    :cond_52
    goto :goto_6e

    .line 885
    :catch_53
    move-exception v1

    .line 887
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

    .line 889
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_6e
    return-void
.end method
