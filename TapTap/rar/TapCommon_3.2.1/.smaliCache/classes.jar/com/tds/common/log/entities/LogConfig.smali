.class public Lcom/tds/common/log/entities/LogConfig;
.super Ljava/lang/Object;
.source "LogConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tds/common/log/entities/LogConfig$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_GROUP_SIZE:I = 0x5


# instance fields
.field public final deviceId:Ljava/lang/String;

.field public final enableUpload:Z

.field private final gamePackage:Ljava/lang/String;

.field private final gameVersionCode:I

.field private final gameVersionName:Ljava/lang/String;

.field public final groupSize:I

.field public final lang:Ljava/lang/String;

.field public final osVersion:Ljava/lang/String;

.field public final platform:Ljava/lang/String;

.field public final sdkName:Ljava/lang/String;

.field public final sdkVersionCode:I

.field public final sdkVersionName:Ljava/lang/String;

.field public final source:Ljava/lang/String;

.field public final tagsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/tds/common/log/entities/LogConfig$Builder;)V
    .registers 11
    .param p1, "builder"    # Lcom/tds/common/log/entities/LogConfig$Builder;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    # getter for: Lcom/tds/common/log/entities/LogConfig$Builder;->sdkName:Ljava/lang/String;
    invoke-static {p1}, Lcom/tds/common/log/entities/LogConfig$Builder;->access$000(Lcom/tds/common/log/entities/LogConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tds/common/log/entities/LogConfig;->sdkName:Ljava/lang/String;

    .line 51
    # getter for: Lcom/tds/common/log/entities/LogConfig$Builder;->source:Ljava/lang/String;
    invoke-static {p1}, Lcom/tds/common/log/entities/LogConfig$Builder;->access$100(Lcom/tds/common/log/entities/LogConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tds/common/log/entities/LogConfig;->source:Ljava/lang/String;

    .line 52
    # getter for: Lcom/tds/common/log/entities/LogConfig$Builder;->enableUpload:Z
    invoke-static {p1}, Lcom/tds/common/log/entities/LogConfig$Builder;->access$200(Lcom/tds/common/log/entities/LogConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tds/common/log/entities/LogConfig;->enableUpload:Z

    .line 53
    # getter for: Lcom/tds/common/log/entities/LogConfig$Builder;->platform:Ljava/lang/String;
    invoke-static {p1}, Lcom/tds/common/log/entities/LogConfig$Builder;->access$300(Lcom/tds/common/log/entities/LogConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tds/common/log/entities/LogConfig;->platform:Ljava/lang/String;

    .line 54
    # getter for: Lcom/tds/common/log/entities/LogConfig$Builder;->osVersion:Ljava/lang/String;
    invoke-static {p1}, Lcom/tds/common/log/entities/LogConfig$Builder;->access$400(Lcom/tds/common/log/entities/LogConfig$Builder;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tds/common/log/entities/LogConfig;->osVersion:Ljava/lang/String;

    .line 55
    # getter for: Lcom/tds/common/log/entities/LogConfig$Builder;->sdkVersionCode:I
    invoke-static {p1}, Lcom/tds/common/log/entities/LogConfig$Builder;->access$500(Lcom/tds/common/log/entities/LogConfig$Builder;)I

    move-result v2

    iput v2, p0, Lcom/tds/common/log/entities/LogConfig;->sdkVersionCode:I

    .line 56
    # getter for: Lcom/tds/common/log/entities/LogConfig$Builder;->sdkVersionName:Ljava/lang/String;
    invoke-static {p1}, Lcom/tds/common/log/entities/LogConfig$Builder;->access$600(Lcom/tds/common/log/entities/LogConfig$Builder;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tds/common/log/entities/LogConfig;->sdkVersionName:Ljava/lang/String;

    .line 57
    # getter for: Lcom/tds/common/log/entities/LogConfig$Builder;->lang:Ljava/lang/String;
    invoke-static {p1}, Lcom/tds/common/log/entities/LogConfig$Builder;->access$700(Lcom/tds/common/log/entities/LogConfig$Builder;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tds/common/log/entities/LogConfig;->lang:Ljava/lang/String;

    .line 58
    # getter for: Lcom/tds/common/log/entities/LogConfig$Builder;->deviceId:Ljava/lang/String;
    invoke-static {p1}, Lcom/tds/common/log/entities/LogConfig$Builder;->access$800(Lcom/tds/common/log/entities/LogConfig$Builder;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/tds/common/log/entities/LogConfig;->deviceId:Ljava/lang/String;

    .line 59
    # getter for: Lcom/tds/common/log/entities/LogConfig$Builder;->groupSize:I
    invoke-static {p1}, Lcom/tds/common/log/entities/LogConfig$Builder;->access$900(Lcom/tds/common/log/entities/LogConfig$Builder;)I

    move-result v4

    iput v4, p0, Lcom/tds/common/log/entities/LogConfig;->groupSize:I

    .line 60
    # getter for: Lcom/tds/common/log/entities/LogConfig$Builder;->gamePackage:Ljava/lang/String;
    invoke-static {p1}, Lcom/tds/common/log/entities/LogConfig$Builder;->access$1000(Lcom/tds/common/log/entities/LogConfig$Builder;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/tds/common/log/entities/LogConfig;->gamePackage:Ljava/lang/String;

    .line 61
    # getter for: Lcom/tds/common/log/entities/LogConfig$Builder;->gameVersionCode:I
    invoke-static {p1}, Lcom/tds/common/log/entities/LogConfig$Builder;->access$1100(Lcom/tds/common/log/entities/LogConfig$Builder;)I

    move-result v5

    iput v5, p0, Lcom/tds/common/log/entities/LogConfig;->gameVersionCode:I

    .line 62
    # getter for: Lcom/tds/common/log/entities/LogConfig$Builder;->gameVersionName:Ljava/lang/String;
    invoke-static {p1}, Lcom/tds/common/log/entities/LogConfig$Builder;->access$1200(Lcom/tds/common/log/entities/LogConfig$Builder;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/tds/common/log/entities/LogConfig;->gameVersionName:Ljava/lang/String;

    .line 63
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, p0, Lcom/tds/common/log/entities/LogConfig;->tagsMap:Ljava/util/Map;

    .line 64
    const-string v8, "PLATFORM"

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_68

    const-string v0, "OS_VERSION"

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    :cond_68
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_73

    const-string v0, "LANG"

    invoke-interface {v7, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    :cond_73
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7e

    const-string v0, "DEVIE_ID"

    invoke-interface {v7, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    :cond_7e
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_89

    const-string v0, "GAME_ID"

    invoke-interface {v7, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    :cond_89
    const/high16 v0, -0x80000000

    if-eq v5, v0, :cond_96

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "GAME_VERSION_CODE"

    invoke-interface {v7, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    :cond_96
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a1

    const-string v0, "GAME_VERSION_NAME"

    invoke-interface {v7, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    :cond_a1
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 4

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LogConfig{topic=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tds/common/log/entities/LogConfig;->sdkName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", enableUpload="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/tds/common/log/entities/LogConfig;->enableUpload:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", platform=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/tds/common/log/entities/LogConfig;->platform:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", osVersion=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/tds/common/log/entities/LogConfig;->osVersion:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", sdkVersionCode="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/tds/common/log/entities/LogConfig;->sdkVersionCode:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", sdkVersionName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/tds/common/log/entities/LogConfig;->sdkVersionName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", lang=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/tds/common/log/entities/LogConfig;->lang:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", deviceId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/tds/common/log/entities/LogConfig;->deviceId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
