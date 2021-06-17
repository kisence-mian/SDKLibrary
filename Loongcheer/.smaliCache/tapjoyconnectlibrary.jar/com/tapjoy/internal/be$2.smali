.class final Lcom/tapjoy/internal/be$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/internal/bd;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/be;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tapjoy/internal/bd<",
        "Landroid/graphics/Rect;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/tapjoy/internal/bi;)Ljava/lang/Object;
    .registers 5

    .line 32
    nop

    .line 1035
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1036
    sget-object v1, Lcom/tapjoy/internal/be$3;->a:[I

    invoke-virtual {p1}, Lcom/tapjoy/internal/bi;->k()Lcom/tapjoy/internal/bn;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tapjoy/internal/bn;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_aa

    .line 1067
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected token: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/tapjoy/internal/bi;->k()Lcom/tapjoy/internal/bn;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1049
    :pswitch_2e
    invoke-virtual {p1}, Lcom/tapjoy/internal/bi;->h()V

    .line 1050
    :goto_31
    invoke-virtual {p1}, Lcom/tapjoy/internal/bi;->j()Z

    move-result v1

    if-eqz v1, :cond_7b

    .line 1051
    invoke-virtual {p1}, Lcom/tapjoy/internal/bi;->l()Ljava/lang/String;

    move-result-object v1

    .line 1052
    const-string v2, "left"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 1053
    invoke-virtual {p1}, Lcom/tapjoy/internal/bi;->r()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    goto :goto_31

    .line 1054
    :cond_4a
    const-string v2, "top"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59

    .line 1055
    invoke-virtual {p1}, Lcom/tapjoy/internal/bi;->r()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    goto :goto_31

    .line 1056
    :cond_59
    const-string v2, "right"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_68

    .line 1057
    invoke-virtual {p1}, Lcom/tapjoy/internal/bi;->r()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    goto :goto_31

    .line 1058
    :cond_68
    const-string v2, "bottom"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_77

    .line 1059
    invoke-virtual {p1}, Lcom/tapjoy/internal/bi;->r()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_31

    .line 1061
    :cond_77
    invoke-virtual {p1}, Lcom/tapjoy/internal/bi;->s()V

    .line 1063
    goto :goto_31

    .line 1064
    :cond_7b
    invoke-virtual {p1}, Lcom/tapjoy/internal/bi;->i()V

    .line 1065
    goto :goto_a8

    .line 1038
    :pswitch_7f
    invoke-virtual {p1}, Lcom/tapjoy/internal/bi;->f()V

    .line 1039
    invoke-virtual {p1}, Lcom/tapjoy/internal/bi;->r()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 1040
    invoke-virtual {p1}, Lcom/tapjoy/internal/bi;->r()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 1041
    invoke-virtual {p1}, Lcom/tapjoy/internal/bi;->r()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 1042
    invoke-virtual {p1}, Lcom/tapjoy/internal/bi;->r()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 1043
    :goto_9a
    invoke-virtual {p1}, Lcom/tapjoy/internal/bi;->j()Z

    move-result v1

    if-eqz v1, :cond_a4

    .line 1044
    invoke-virtual {p1}, Lcom/tapjoy/internal/bi;->s()V

    goto :goto_9a

    .line 1046
    :cond_a4
    invoke-virtual {p1}, Lcom/tapjoy/internal/bi;->g()V

    .line 1047
    nop

    .line 1069
    :goto_a8
    nop

    .line 32
    return-object v0

    :pswitch_data_aa
    .packed-switch 0x1
        :pswitch_7f
        :pswitch_2e
    .end packed-switch
.end method
