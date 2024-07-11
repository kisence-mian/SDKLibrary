.class final Lcom/bytedance/sdk/openadsdk/dislike/LandingCommentDialog$5;
.super Ljava/lang/Object;
.source "LandingCommentDialog.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/dislike/LandingCommentDialog;->setEditTextInputSpace(Landroid/widget/EditText;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .registers 7

    .line 180
    nop

    :goto_1
    if-ge p2, p3, :cond_1a

    .line 181
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p4

    invoke-static {p4}, Ljava/lang/Character;->getType(C)I

    move-result p4

    .line 182
    const/16 p5, 0x13

    if-eq p4, p5, :cond_17

    const/16 p5, 0x1c

    if-ne p4, p5, :cond_14

    goto :goto_17

    .line 180
    :cond_14
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 183
    :cond_17
    :goto_17
    const-string p1, ""

    return-object p1

    .line 186
    :cond_1a
    const/4 p1, 0x0

    return-object p1
.end method
