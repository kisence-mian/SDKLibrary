.class public Lcom/tapsdk/moment/NetConfig;
.super Ljava/lang/Object;
.source "NetConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapsdk/moment/NetConfig$Holder;
    }
.end annotation


# static fields
.field public static final HEADER_ANDROID_ID:Ljava/lang/String; = "Android-ID"

.field public static final HEADER_DEVICE_ID:Ljava/lang/String; = "Device-ID"


# instance fields
.field private commonHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private initialized:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tapsdk/moment/NetConfig;->initialized:Z

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tapsdk/moment/NetConfig;->commonHeaders:Ljava/util/Map;

    return-void
.end method

.method public static getInstance()Lcom/tapsdk/moment/NetConfig;
    .registers 1

    .line 24
    sget-object v0, Lcom/tapsdk/moment/NetConfig$Holder;->INSTANCE:Lcom/tapsdk/moment/NetConfig;

    return-object v0
.end method

.method private makeCommonHeaders(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .line 34
    invoke-static {p1}, Lcom/tapsdk/moment/utils/DeviceUtils;->getAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 35
    .local v0, "androidId":Ljava/lang/String;
    sget-object v1, Lcom/tapsdk/moment/utils/GUIDHelper;->INSTANCE:Lcom/tapsdk/moment/utils/GUIDHelper;

    invoke-virtual {v1}, Lcom/tapsdk/moment/utils/GUIDHelper;->getUID()Ljava/lang/String;

    move-result-object v1

    .line 37
    .local v1, "deviceId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_17

    iget-object v2, p0, Lcom/tapsdk/moment/NetConfig;->commonHeaders:Ljava/util/Map;

    const-string v3, "Android-ID"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    :cond_17
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_24

    iget-object v2, p0, Lcom/tapsdk/moment/NetConfig;->commonHeaders:Ljava/util/Map;

    const-string v3, "Device-ID"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    :cond_24
    return-void
.end method


# virtual methods
.method public getCommonHeaders()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/tapsdk/moment/NetConfig;->commonHeaders:Ljava/util/Map;

    return-object v0
.end method

.method public init(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 28
    sget-object v0, Lcom/tapsdk/moment/utils/GUIDHelper;->INSTANCE:Lcom/tapsdk/moment/utils/GUIDHelper;

    invoke-virtual {v0, p1}, Lcom/tapsdk/moment/utils/GUIDHelper;->init(Landroid/content/Context;)V

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tapsdk/moment/NetConfig;->initialized:Z

    .line 30
    invoke-direct {p0, p1}, Lcom/tapsdk/moment/NetConfig;->makeCommonHeaders(Landroid/content/Context;)V

    .line 31
    return-void
.end method
