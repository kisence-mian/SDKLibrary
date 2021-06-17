.class final synthetic Lcom/tapjoy/internal/gd$3;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/gd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 75
    invoke-static {}, Lcom/tapjoy/internal/gd$c;->a()[I

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/tapjoy/internal/gd$3;->a:[I

    const/4 v1, 0x1

    :try_start_a
    sget v2, Lcom/tapjoy/internal/gd$c;->e:I

    sub-int/2addr v2, v1

    aput v1, v0, v2
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_f} :catch_10

    goto :goto_11

    :catch_10
    move-exception v0

    :goto_11
    :try_start_11
    sget-object v0, Lcom/tapjoy/internal/gd$3;->a:[I

    sget v2, Lcom/tapjoy/internal/gd$c;->a:I

    sub-int/2addr v2, v1

    const/4 v3, 0x2

    aput v3, v0, v2
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_19} :catch_1a

    goto :goto_1b

    :catch_1a
    move-exception v0

    :goto_1b
    :try_start_1b
    sget-object v0, Lcom/tapjoy/internal/gd$3;->a:[I

    sget v2, Lcom/tapjoy/internal/gd$c;->b:I

    sub-int/2addr v2, v1

    const/4 v3, 0x3

    aput v3, v0, v2
    :try_end_23
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_23} :catch_24

    goto :goto_25

    :catch_24
    move-exception v0

    :goto_25
    :try_start_25
    sget-object v0, Lcom/tapjoy/internal/gd$3;->a:[I

    sget v2, Lcom/tapjoy/internal/gd$c;->c:I

    sub-int/2addr v2, v1

    const/4 v3, 0x4

    aput v3, v0, v2
    :try_end_2d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_25 .. :try_end_2d} :catch_2e

    goto :goto_2f

    :catch_2e
    move-exception v0

    :goto_2f
    :try_start_2f
    sget-object v0, Lcom/tapjoy/internal/gd$3;->a:[I

    sget v2, Lcom/tapjoy/internal/gd$c;->d:I

    sub-int/2addr v2, v1

    const/4 v1, 0x5

    aput v1, v0, v2
    :try_end_37
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2f .. :try_end_37} :catch_38

    return-void

    :catch_38
    move-exception v0

    return-void
.end method
