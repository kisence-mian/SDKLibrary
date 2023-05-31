.class final synthetic Lcom/mintegral/msdk/nativex/view/MTGMediaView$9;
.super Ljava/lang/Object;
.source "MTGMediaView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/nativex/view/MTGMediaView;
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

    .prologue
    .line 1876
    invoke-static {}, Lcom/mintegral/msdk/nativex/view/mtgfullview/BaseView$a;->a()[I

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/mintegral/msdk/nativex/view/MTGMediaView$9;->a:[I

    :try_start_9
    sget-object v0, Lcom/mintegral/msdk/nativex/view/MTGMediaView$9;->a:[I

    sget v1, Lcom/mintegral/msdk/nativex/view/mtgfullview/BaseView$a;->b:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_1e

    :goto_12
    :try_start_12
    sget-object v0, Lcom/mintegral/msdk/nativex/view/MTGMediaView$9;->a:[I

    sget v1, Lcom/mintegral/msdk/nativex/view/mtgfullview/BaseView$a;->a:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1b} :catch_1c

    :goto_1b
    return-void

    :catch_1c
    move-exception v0

    goto :goto_1b

    :catch_1e
    move-exception v0

    goto :goto_12
.end method
