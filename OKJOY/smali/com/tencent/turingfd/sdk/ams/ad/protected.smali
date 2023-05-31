.class public Lcom/tencent/turingfd/sdk/ams/ad/protected;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/turingfd/sdk/ams/ad/protected$do;
    }
.end annotation


# static fields
.field public static rc:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/tencent/turingfd/sdk/ams/ad/protected$do;",
            ">;"
        }
    .end annotation
.end field

.field public static sc:Lcom/tencent/turingfd/sdk/ams/ad/transient;

.field public static tc:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/tencent/turingfd/sdk/ams/ad/protected;->rc:Ljava/util/Map;

    .line 2
    sget-object v0, Lcom/tencent/turingfd/sdk/ams/ad/protected;->rc:Ljava/util/Map;

    new-instance v1, Lcom/tencent/turingfd/sdk/ams/ad/protected$do;

    new-instance v2, Lcom/tencent/turingfd/sdk/ams/ad/Andromeda;

    invoke-direct {v2}, Lcom/tencent/turingfd/sdk/ams/ad/Andromeda;-><init>()V

    invoke-direct {v1, v2}, Lcom/tencent/turingfd/sdk/ams/ad/protected$do;-><init>(Lcom/tencent/turingfd/sdk/ams/ad/volatile;)V

    const-string v2, "22C4185"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v0, Lcom/tencent/turingfd/sdk/ams/ad/protected;->rc:Ljava/util/Map;

    new-instance v1, Lcom/tencent/turingfd/sdk/ams/ad/protected$do;

    new-instance v2, Lcom/tencent/turingfd/sdk/ams/ad/Aquila;

    invoke-direct {v2}, Lcom/tencent/turingfd/sdk/ams/ad/Aquila;-><init>()V

    invoke-direct {v1, v2}, Lcom/tencent/turingfd/sdk/ams/ad/protected$do;-><init>(Lcom/tencent/turingfd/sdk/ams/ad/volatile;)V

    const-string v2, "C892BA2"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object v0, Lcom/tencent/turingfd/sdk/ams/ad/protected;->rc:Ljava/util/Map;

    new-instance v1, Lcom/tencent/turingfd/sdk/ams/ad/protected$do;

    new-instance v2, Lcom/tencent/turingfd/sdk/ams/ad/Aquila;

    invoke-direct {v2}, Lcom/tencent/turingfd/sdk/ams/ad/Aquila;-><init>()V

    invoke-direct {v1, v2}, Lcom/tencent/turingfd/sdk/ams/ad/protected$do;-><init>(Lcom/tencent/turingfd/sdk/ams/ad/volatile;)V

    const-string v2, "43780D5"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, ""

    .line 5
    sput-object v0, Lcom/tencent/turingfd/sdk/ams/ad/protected;->tc:Ljava/lang/String;

    .line 6
    :try_start_3e
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/turingfd/sdk/ams/ad/for;->c([B)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/turingfd/sdk/ams/ad/protected;->tc:Ljava/lang/String;
    :try_end_54
    .catch Ljava/lang/Throwable; {:try_start_3e .. :try_end_54} :catch_55

    :goto_54
    return-void

    :catch_55
    move-exception v0

    goto :goto_54
.end method
