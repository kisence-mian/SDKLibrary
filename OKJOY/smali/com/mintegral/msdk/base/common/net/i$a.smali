.class public final Lcom/mintegral/msdk/base/common/net/i$a;
.super Ljava/lang/Enum;
.source "CommonPPHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/base/common/net/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mintegral/msdk/base/common/net/i$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:I

.field public static final enum b:I

.field private static final synthetic c:[I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v0, 0x2

    const/4 v3, 0x1

    .line 47
    sput v3, Lcom/mintegral/msdk/base/common/net/i$a;->a:I

    sput v0, Lcom/mintegral/msdk/base/common/net/i$a;->b:I

    .line 46
    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lcom/mintegral/msdk/base/common/net/i$a;->a:I

    aput v2, v0, v1

    sget v1, Lcom/mintegral/msdk/base/common/net/i$a;->b:I

    aput v1, v0, v3

    sput-object v0, Lcom/mintegral/msdk/base/common/net/i$a;->c:[I

    return-void
.end method
