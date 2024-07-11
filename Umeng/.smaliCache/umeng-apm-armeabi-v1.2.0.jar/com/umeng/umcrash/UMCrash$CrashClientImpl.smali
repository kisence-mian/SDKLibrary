.class Lcom/umeng/umcrash/UMCrash$CrashClientImpl;
.super Ljava/lang/Object;
.source "UMCrash.java"

# interfaces
.implements Lcom/uc/crashsdk/export/ICrashClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/umcrash/UMCrash;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CrashClientImpl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/umcrash/UMCrash$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/umeng/umcrash/UMCrash$1;

    .line 83
    invoke-direct {p0}, Lcom/umeng/umcrash/UMCrash$CrashClientImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public onAddCrashStats(Ljava/lang/String;II)V
    .registers 4
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "i"    # I
    .param p3, "i1"    # I

    .line 99
    return-void
.end method

.method public onBeforeUploadLog(Ljava/io/File;)Ljava/io/File;
    .registers 2
    .param p1, "file"    # Ljava/io/File;

    .line 92
    return-object p1
.end method

.method public onClientProcessLogGenerated(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V
    .registers 4
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/io/File;
    .param p3, "s1"    # Ljava/lang/String;

    .line 89
    return-void
.end method

.method public onCrashRestarting(Z)V
    .registers 2
    .param p1, "b"    # Z

    .line 96
    return-void
.end method

.method public onGetCallbackInfo(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 11
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "b"    # Z

    .line 102
    const-string v0, "um_action_log"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8d

    .line 103
    const/4 v0, 0x0

    .line 105
    .local v0, "result":Ljava/lang/String;
    :try_start_9
    # getter for: Lcom/umeng/umcrash/UMCrash;->pageArrayLock:Ljava/lang/Object;
    invoke-static {}, Lcom/umeng/umcrash/UMCrash;->access$000()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_8b

    .line 106
    :try_start_e
    # getter for: Lcom/umeng/umcrash/UMCrash;->mArrayList:Ljava/util/ArrayList;
    invoke-static {}, Lcom/umeng/umcrash/UMCrash;->access$100()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_86

    # getter for: Lcom/umeng/umcrash/UMCrash;->mArrayList:Ljava/util/ArrayList;
    invoke-static {}, Lcom/umeng/umcrash/UMCrash;->access$100()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_86

    .line 107
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 108
    .local v2, "jsonSec":Lorg/json/JSONObject;
    const-string v3, "source"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 109
    const-string v3, "action_name"

    const-string v4, "page_view"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 110
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 111
    .local v3, "jsonParameter":Lorg/json/JSONArray;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_36
    # getter for: Lcom/umeng/umcrash/UMCrash;->mArrayList:Ljava/util/ArrayList;
    invoke-static {}, Lcom/umeng/umcrash/UMCrash;->access$100()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_5c

    .line 112
    # getter for: Lcom/umeng/umcrash/UMCrash;->mArrayList:Ljava/util/ArrayList;
    invoke-static {}, Lcom/umeng/umcrash/UMCrash;->access$100()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 113
    .local v5, "item":Ljava/lang/String;
    if-eqz v5, :cond_59

    .line 114
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 115
    .local v6, "jsonitem":Lorg/json/JSONObject;
    const-string v7, "name"

    invoke-virtual {v6, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 116
    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 111
    .end local v5    # "item":Ljava/lang/String;
    .end local v6    # "jsonitem":Lorg/json/JSONObject;
    :cond_59
    add-int/lit8 v4, v4, 0x1

    goto :goto_36

    .line 119
    .end local v4    # "i":I
    :cond_5c
    const-string v4, "action_parameter"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 120
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .line 121
    # getter for: Lcom/umeng/umcrash/UMCrash;->isDebug:Z
    invoke-static {}, Lcom/umeng/umcrash/UMCrash;->access$200()Z

    move-result v4

    if-eqz v4, :cond_86

    .line 122
    # getter for: Lcom/umeng/umcrash/UMCrash;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/umeng/umcrash/UMCrash;->access$300()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "page json is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    .end local v2    # "jsonSec":Lorg/json/JSONObject;
    .end local v3    # "jsonParameter":Lorg/json/JSONArray;
    :cond_86
    monitor-exit v1

    .line 127
    goto :goto_8c

    .line 125
    :catchall_88
    move-exception v2

    monitor-exit v1
    :try_end_8a
    .catchall {:try_start_e .. :try_end_8a} :catchall_88

    .end local v0    # "result":Ljava/lang/String;
    .end local p1    # "category":Ljava/lang/String;
    .end local p2    # "b":Z
    :try_start_8a
    throw v2
    :try_end_8b
    .catchall {:try_start_8a .. :try_end_8b} :catchall_8b

    .line 126
    .restart local v0    # "result":Ljava/lang/String;
    .restart local p1    # "category":Ljava/lang/String;
    .restart local p2    # "b":Z
    :catchall_8b
    move-exception v1

    .line 128
    :goto_8c
    return-object v0

    .line 129
    .end local v0    # "result":Ljava/lang/String;
    :cond_8d
    const-string v0, "um_umid"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9e

    .line 130
    # getter for: Lcom/umeng/umcrash/UMCrash;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/umeng/umcrash/UMCrash;->access$400()Landroid/content/Context;

    move-result-object v0

    # invokes: Lcom/umeng/umcrash/UMCrash;->getUMID(Landroid/content/Context;)Ljava/lang/String;
    invoke-static {v0}, Lcom/umeng/umcrash/UMCrash;->access$500(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 131
    :cond_9e
    const-string v0, "um_user_string"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_cb

    .line 132
    # getter for: Lcom/umeng/umcrash/UMCrash;->mUMCrashCallback:Lcom/umeng/umcrash/UMCrashCallback;
    invoke-static {}, Lcom/umeng/umcrash/UMCrash;->access$600()Lcom/umeng/umcrash/UMCrashCallback;

    move-result-object v0

    if-eqz v0, :cond_ca

    .line 134
    # getter for: Lcom/umeng/umcrash/UMCrash;->mUMCrashCallback:Lcom/umeng/umcrash/UMCrashCallback;
    invoke-static {}, Lcom/umeng/umcrash/UMCrash;->access$600()Lcom/umeng/umcrash/UMCrashCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/umeng/umcrash/UMCrashCallback;->onCallback()Ljava/lang/String;

    move-result-object v0

    .line 135
    .local v0, "callbackString":Ljava/lang/String;
    if-nez v0, :cond_b8

    .line 136
    return-object v1

    .line 138
    :cond_b8
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    .line 139
    .local v1, "len":I
    const/16 v2, 0x100

    if-le v1, v2, :cond_c9

    .line 140
    invoke-static {v0, v2}, Lcom/umeng/umcrash/UMCrashUtils;->splitByByte(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 142
    :cond_c9
    return-object v0

    .line 145
    .end local v0    # "callbackString":Ljava/lang/String;
    .end local v1    # "len":I
    :cond_ca
    return-object v1

    .line 148
    :cond_cb
    return-object v1
.end method

.method public onLogGenerated(Ljava/io/File;Ljava/lang/String;)V
    .registers 3
    .param p1, "file"    # Ljava/io/File;
    .param p2, "s"    # Ljava/lang/String;

    .line 86
    return-void
.end method
