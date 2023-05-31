.class public final Lcom/mintegral/msdk/nativex/view/mtgfullview/BaseView$a;
.super Ljava/lang/Enum;
.source "BaseView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/nativex/view/mtgfullview/BaseView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mintegral/msdk/nativex/view/mtgfullview/BaseView$a;",
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

    .line 167
    sput v3, Lcom/mintegral/msdk/nativex/view/mtgfullview/BaseView$a;->a:I

    .line 168
    sput v0, Lcom/mintegral/msdk/nativex/view/mtgfullview/BaseView$a;->b:I

    .line 166
    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lcom/mintegral/msdk/nativex/view/mtgfullview/BaseView$a;->a:I

    aput v2, v0, v1

    sget v1, Lcom/mintegral/msdk/nativex/view/mtgfullview/BaseView$a;->b:I

    aput v1, v0, v3

    sput-object v0, Lcom/mintegral/msdk/nativex/view/mtgfullview/BaseView$a;->c:[I

    return-void
.end method

.method public static a()[I
    .registers 1

    .prologue
    .line 166
    sget-object v0, Lcom/mintegral/msdk/nativex/view/mtgfullview/BaseView$a;->c:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method
