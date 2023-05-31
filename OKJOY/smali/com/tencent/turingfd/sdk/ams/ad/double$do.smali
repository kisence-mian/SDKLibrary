.class public final enum Lcom/tencent/turingfd/sdk/ams/ad/double$do;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/turingfd/sdk/ams/ad/double;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "do"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/tencent/turingfd/sdk/ams/ad/double$do;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Ac:Lcom/tencent/turingfd/sdk/ams/ad/double$do;

.field public static final enum Bc:Lcom/tencent/turingfd/sdk/ams/ad/double$do;

.field public static final enum Cc:Lcom/tencent/turingfd/sdk/ams/ad/double$do;

.field public static final enum zc:Lcom/tencent/turingfd/sdk/ams/ad/double$do;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1
    new-instance v0, Lcom/tencent/turingfd/sdk/ams/ad/double$do;

    const-string v1, "CONN_WIFI"

    invoke-direct {v0, v1, v2}, Lcom/tencent/turingfd/sdk/ams/ad/double$do;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/turingfd/sdk/ams/ad/double$do;->zc:Lcom/tencent/turingfd/sdk/ams/ad/double$do;

    .line 2
    new-instance v0, Lcom/tencent/turingfd/sdk/ams/ad/double$do;

    const-string v1, "CONN_CMWAP"

    invoke-direct {v0, v1, v3}, Lcom/tencent/turingfd/sdk/ams/ad/double$do;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/turingfd/sdk/ams/ad/double$do;->Ac:Lcom/tencent/turingfd/sdk/ams/ad/double$do;

    .line 3
    new-instance v0, Lcom/tencent/turingfd/sdk/ams/ad/double$do;

    const-string v1, "CONN_CMNET"

    invoke-direct {v0, v1, v4}, Lcom/tencent/turingfd/sdk/ams/ad/double$do;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/turingfd/sdk/ams/ad/double$do;->Bc:Lcom/tencent/turingfd/sdk/ams/ad/double$do;

    .line 4
    new-instance v0, Lcom/tencent/turingfd/sdk/ams/ad/double$do;

    const-string v1, "CONN_NONE"

    invoke-direct {v0, v1, v5}, Lcom/tencent/turingfd/sdk/ams/ad/double$do;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/turingfd/sdk/ams/ad/double$do;->Cc:Lcom/tencent/turingfd/sdk/ams/ad/double$do;

    const/4 v0, 0x4

    .line 5
    new-array v0, v0, [Lcom/tencent/turingfd/sdk/ams/ad/double$do;

    sget-object v1, Lcom/tencent/turingfd/sdk/ams/ad/double$do;->zc:Lcom/tencent/turingfd/sdk/ams/ad/double$do;

    aput-object v1, v0, v2

    sget-object v1, Lcom/tencent/turingfd/sdk/ams/ad/double$do;->Ac:Lcom/tencent/turingfd/sdk/ams/ad/double$do;

    aput-object v1, v0, v3

    sget-object v1, Lcom/tencent/turingfd/sdk/ams/ad/double$do;->Bc:Lcom/tencent/turingfd/sdk/ams/ad/double$do;

    aput-object v1, v0, v4

    sget-object v1, Lcom/tencent/turingfd/sdk/ams/ad/double$do;->Cc:Lcom/tencent/turingfd/sdk/ams/ad/double$do;

    aput-object v1, v0, v5

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method
