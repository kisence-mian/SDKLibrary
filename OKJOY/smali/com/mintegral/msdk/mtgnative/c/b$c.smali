.class public final Lcom/mintegral/msdk/mtgnative/c/b$c;
.super Ljava/lang/Object;
.source "NativeController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/mtgnative/c/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/mtgnative/c/b;

.field private b:I

.field private c:Lcom/mintegral/msdk/base/common/f/c;

.field private d:Lcom/mintegral/msdk/base/common/f/a;

.field private e:I

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/mintegral/msdk/mtgnative/c/b;Lcom/mintegral/msdk/base/common/f/c;ILjava/lang/String;)V
    .registers 6

    .prologue
    .line 1897
    iput-object p1, p0, Lcom/mintegral/msdk/mtgnative/c/b$c;->a:Lcom/mintegral/msdk/mtgnative/c/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1898
    const/4 v0, 0x1

    iput v0, p0, Lcom/mintegral/msdk/mtgnative/c/b$c;->b:I

    .line 1899
    iput-object p2, p0, Lcom/mintegral/msdk/mtgnative/c/b$c;->c:Lcom/mintegral/msdk/base/common/f/c;

    .line 1900
    iput p3, p0, Lcom/mintegral/msdk/mtgnative/c/b$c;->e:I

    .line 1901
    iput-object p4, p0, Lcom/mintegral/msdk/mtgnative/c/b$c;->f:Ljava/lang/String;

    .line 1902
    return-void
.end method


# virtual methods
.method public final a(Lcom/mintegral/msdk/base/common/f/a;)V
    .registers 2

    .prologue
    .line 1956
    iput-object p1, p0, Lcom/mintegral/msdk/mtgnative/c/b$c;->d:Lcom/mintegral/msdk/base/common/f/a;

    .line 1957
    return-void
.end method

.method public final run()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 1906
    invoke-static {}, Lcom/mintegral/msdk/mtgnative/c/b;->c()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "cancel task adsource is = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/mintegral/msdk/mtgnative/c/b$c;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1907
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b$c;->c:Lcom/mintegral/msdk/base/common/f/c;

    invoke-interface {v0}, Lcom/mintegral/msdk/base/common/f/c;->a_()V

    .line 1908
    iget v0, p0, Lcom/mintegral/msdk/mtgnative/c/b$c;->b:I

    packed-switch v0, :pswitch_data_5a

    .line 1949
    :cond_23
    :goto_23
    :pswitch_23
    return-void

    .line 1917
    :pswitch_24
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b$c;->a:Lcom/mintegral/msdk/mtgnative/c/b;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgnative/c/b;->k(Lcom/mintegral/msdk/mtgnative/c/b;)Z

    .line 1918
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b$c;->a:Lcom/mintegral/msdk/mtgnative/c/b;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgnative/c/b;->l(Lcom/mintegral/msdk/mtgnative/c/b;)Z

    move-result v0

    if-nez v0, :cond_35

    iget v0, p0, Lcom/mintegral/msdk/mtgnative/c/b$c;->e:I

    if-ne v0, v3, :cond_23

    .line 1919
    :cond_35
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b$c;->a:Lcom/mintegral/msdk/mtgnative/c/b;

    const-string v1, "REQUEST_TIMEOUT"

    iget v2, p0, Lcom/mintegral/msdk/mtgnative/c/b$c;->e:I

    iget-object v3, p0, Lcom/mintegral/msdk/mtgnative/c/b$c;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/mintegral/msdk/mtgnative/c/b;->a(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_23

    .line 1923
    :pswitch_41
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b$c;->a:Lcom/mintegral/msdk/mtgnative/c/b;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgnative/c/b;->f(Lcom/mintegral/msdk/mtgnative/c/b;)Z

    move-result v0

    if-eqz v0, :cond_4d

    iget v0, p0, Lcom/mintegral/msdk/mtgnative/c/b$c;->e:I

    if-ne v0, v3, :cond_23

    .line 1924
    :cond_4d
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b$c;->a:Lcom/mintegral/msdk/mtgnative/c/b;

    const-string v1, "REQUEST_TIMEOUT"

    iget v2, p0, Lcom/mintegral/msdk/mtgnative/c/b$c;->e:I

    iget-object v3, p0, Lcom/mintegral/msdk/mtgnative/c/b$c;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/mintegral/msdk/mtgnative/c/b;->a(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_23

    .line 1908
    nop

    :pswitch_data_5a
    .packed-switch 0x1
        :pswitch_24
        :pswitch_41
        :pswitch_23
    .end packed-switch
.end method
