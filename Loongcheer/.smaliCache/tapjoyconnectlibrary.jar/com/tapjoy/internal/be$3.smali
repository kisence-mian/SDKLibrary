.class final synthetic Lcom/tapjoy/internal/be$3;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/be;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 36
    invoke-static {}, Lcom/tapjoy/internal/bn;->values()[Lcom/tapjoy/internal/bn;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/tapjoy/internal/be$3;->a:[I

    :try_start_9
    sget-object v1, Lcom/tapjoy/internal/bn;->a:Lcom/tapjoy/internal/bn;

    invoke-virtual {v1}, Lcom/tapjoy/internal/bn;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_13

    goto :goto_14

    :catch_13
    move-exception v0

    :goto_14
    :try_start_14
    sget-object v0, Lcom/tapjoy/internal/be$3;->a:[I

    sget-object v1, Lcom/tapjoy/internal/bn;->c:Lcom/tapjoy/internal/bn;

    invoke-virtual {v1}, Lcom/tapjoy/internal/bn;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_20

    return-void

    :catch_20
    move-exception v0

    return-void
.end method