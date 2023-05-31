.class public Lcom/tencent/turingfd/sdk/ams/ad/TuringDIDService;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/turingfd/sdk/ams/ad/TuringDIDService$aa;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/tencent/turingfd/sdk/ams/ad/byte;)Lcom/tencent/turingfd/sdk/ams/ad/ITuringDID;
    .registers 2

    .prologue
    .line 1
    new-instance v0, Lcom/tencent/turingfd/sdk/ams/ad/goto;

    invoke-direct {v0, p0}, Lcom/tencent/turingfd/sdk/ams/ad/goto;-><init>(Lcom/tencent/turingfd/sdk/ams/ad/byte;)V

    return-object v0
.end method

.method public static getTuringAIDTicket(Landroid/content/Context;)Lcom/tencent/turingfd/sdk/ams/ad/ITuringDID;
    .registers 5

    .prologue
    .line 1
    invoke-static {}, Lcom/tencent/turingfd/sdk/ams/ad/char;->o()I

    move-result v0

    if-eqz v0, :cond_f

    .line 2
    invoke-static {v0}, Lcom/tencent/turingfd/sdk/ams/ad/static;->c(I)Lcom/tencent/turingfd/sdk/ams/ad/static;

    move-result-object v0

    .line 30
    :goto_a
    invoke-static {v0}, Lcom/tencent/turingfd/sdk/ams/ad/TuringDIDService;->a(Lcom/tencent/turingfd/sdk/ams/ad/byte;)Lcom/tencent/turingfd/sdk/ams/ad/ITuringDID;

    move-result-object v0

    return-object v0

    .line 3
    :cond_f
    sget-object v0, Lcom/tencent/turingfd/sdk/ams/ad/boolean;->Zb:Lcom/tencent/turingfd/sdk/ams/ad/boolean;

    .line 4
    iget-object v1, v0, Lcom/tencent/turingfd/sdk/ams/ad/boolean;->ic:Lcom/tencent/turingfd/sdk/ams/ad/static;

    if-eqz v1, :cond_20

    .line 5
    iget-object v1, v1, Lcom/tencent/turingfd/sdk/ams/ad/static;->Wb:Ljava/lang/String;

    .line 6
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_20

    .line 7
    iget-object v0, v0, Lcom/tencent/turingfd/sdk/ams/ad/boolean;->ic:Lcom/tencent/turingfd/sdk/ams/ad/static;

    goto :goto_a

    .line 8
    :cond_20
    iget-object v1, v0, Lcom/tencent/turingfd/sdk/ams/ad/boolean;->ec:Lcom/tencent/turingfd/sdk/ams/ad/package;

    invoke-virtual {v1, p0}, Lcom/tencent/turingfd/sdk/ams/ad/package;->w(Landroid/content/Context;)Lcom/tencent/turingfd/sdk/ams/ad/static;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/turingfd/sdk/ams/ad/boolean;->ic:Lcom/tencent/turingfd/sdk/ams/ad/static;

    .line 9
    iget-object v1, v0, Lcom/tencent/turingfd/sdk/ams/ad/boolean;->ic:Lcom/tencent/turingfd/sdk/ams/ad/static;

    .line 10
    iget-object v1, v1, Lcom/tencent/turingfd/sdk/ams/ad/static;->Wb:Ljava/lang/String;

    .line 11
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_35

    .line 12
    iget-object v0, v0, Lcom/tencent/turingfd/sdk/ams/ad/boolean;->ic:Lcom/tencent/turingfd/sdk/ams/ad/static;

    goto :goto_a

    .line 13
    :cond_35
    iget-object v1, v0, Lcom/tencent/turingfd/sdk/ams/ad/boolean;->ec:Lcom/tencent/turingfd/sdk/ams/ad/package;

    invoke-virtual {v1, p0}, Lcom/tencent/turingfd/sdk/ams/ad/package;->s(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 14
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4a

    .line 15
    invoke-static {v1}, Lcom/tencent/turingfd/sdk/ams/ad/static;->f(Ljava/lang/String;)Lcom/tencent/turingfd/sdk/ams/ad/static;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/turingfd/sdk/ams/ad/boolean;->ic:Lcom/tencent/turingfd/sdk/ams/ad/static;

    .line 16
    iget-object v0, v0, Lcom/tencent/turingfd/sdk/ams/ad/boolean;->ic:Lcom/tencent/turingfd/sdk/ams/ad/static;

    goto :goto_a

    .line 17
    :cond_4a
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_5b

    const/16 v0, -0x2718

    .line 18
    invoke-static {v0}, Lcom/tencent/turingfd/sdk/ams/ad/static;->c(I)Lcom/tencent/turingfd/sdk/ams/ad/static;

    move-result-object v0

    goto :goto_a

    .line 19
    :cond_5b
    invoke-static {}, Lcom/tencent/turingfd/sdk/ams/ad/for;->a()Landroid/util/SparseArray;

    move-result-object v1

    .line 20
    invoke-static {v1, p0}, Lcom/tencent/turingfd/sdk/ams/ad/TuringDIDService$aa;->c(Landroid/util/SparseArray;Landroid/content/Context;)Landroid/util/SparseArray;

    .line 21
    invoke-static {v1}, Lcom/tencent/turingfd/sdk/ams/ad/for;->a(Landroid/util/SparseArray;)I

    move-result v2

    if-eqz v2, :cond_6d

    .line 22
    invoke-static {v2}, Lcom/tencent/turingfd/sdk/ams/ad/static;->c(I)Lcom/tencent/turingfd/sdk/ams/ad/static;

    move-result-object v0

    goto :goto_a

    .line 23
    :cond_6d
    invoke-static {v1}, Lcom/tencent/turingfd/sdk/ams/ad/for;->b(Landroid/util/SparseArray;)Ljava/lang/String;

    move-result-object v1

    .line 24
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7e

    const/16 v0, -0x271d

    .line 25
    invoke-static {v0}, Lcom/tencent/turingfd/sdk/ams/ad/static;->c(I)Lcom/tencent/turingfd/sdk/ams/ad/static;

    move-result-object v0

    goto :goto_a

    .line 26
    :cond_7e
    invoke-static {v1}, Lcom/tencent/turingfd/sdk/ams/ad/static;->f(Ljava/lang/String;)Lcom/tencent/turingfd/sdk/ams/ad/static;

    move-result-object v2

    iput-object v2, v0, Lcom/tencent/turingfd/sdk/ams/ad/boolean;->ic:Lcom/tencent/turingfd/sdk/ams/ad/static;

    .line 27
    iget-object v2, v0, Lcom/tencent/turingfd/sdk/ams/ad/boolean;->ec:Lcom/tencent/turingfd/sdk/ams/ad/package;

    const-string v3, "301"

    .line 28
    invoke-virtual {v2, p0, v3, v1}, Lcom/tencent/turingfd/sdk/ams/ad/package;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    iget-object v0, v0, Lcom/tencent/turingfd/sdk/ams/ad/boolean;->ic:Lcom/tencent/turingfd/sdk/ams/ad/static;

    goto/16 :goto_a
.end method

.method public static getTuringDID(Landroid/content/Context;)Lcom/tencent/turingfd/sdk/ams/ad/ITuringDID;
    .registers 2

    .prologue
    .line 1
    invoke-static {}, Lcom/tencent/turingfd/sdk/ams/ad/char;->o()I

    move-result v0

    if-eqz v0, :cond_f

    .line 2
    invoke-static {v0}, Lcom/tencent/turingfd/sdk/ams/ad/static;->c(I)Lcom/tencent/turingfd/sdk/ams/ad/static;

    move-result-object v0

    .line 5
    :goto_a
    invoke-static {v0}, Lcom/tencent/turingfd/sdk/ams/ad/TuringDIDService;->a(Lcom/tencent/turingfd/sdk/ams/ad/byte;)Lcom/tencent/turingfd/sdk/ams/ad/ITuringDID;

    move-result-object v0

    return-object v0

    .line 3
    :cond_f
    sget-object v0, Lcom/tencent/turingfd/sdk/ams/ad/boolean;->Zb:Lcom/tencent/turingfd/sdk/ams/ad/boolean;

    .line 4
    invoke-virtual {v0, p0}, Lcom/tencent/turingfd/sdk/ams/ad/boolean;->m(Landroid/content/Context;)Lcom/tencent/turingfd/sdk/ams/ad/static;

    move-result-object v0

    goto :goto_a
.end method

.method public static getTuringDIDCached(Landroid/content/Context;)Lcom/tencent/turingfd/sdk/ams/ad/ITuringDID;
    .registers 5

    .prologue
    .line 1
    invoke-static {}, Lcom/tencent/turingfd/sdk/ams/ad/char;->o()I

    move-result v0

    if-eqz v0, :cond_f

    .line 2
    invoke-static {v0}, Lcom/tencent/turingfd/sdk/ams/ad/static;->c(I)Lcom/tencent/turingfd/sdk/ams/ad/static;

    move-result-object v0

    .line 9
    :cond_a
    :goto_a
    invoke-static {v0}, Lcom/tencent/turingfd/sdk/ams/ad/TuringDIDService;->a(Lcom/tencent/turingfd/sdk/ams/ad/byte;)Lcom/tencent/turingfd/sdk/ams/ad/ITuringDID;

    move-result-object v0

    return-object v0

    .line 3
    :cond_f
    sget-object v1, Lcom/tencent/turingfd/sdk/ams/ad/boolean;->Zb:Lcom/tencent/turingfd/sdk/ams/ad/boolean;

    .line 4
    invoke-virtual {v1, p0}, Lcom/tencent/turingfd/sdk/ams/ad/boolean;->l(Landroid/content/Context;)Lcom/tencent/turingfd/sdk/ams/ad/static;

    move-result-object v0

    .line 5
    invoke-virtual {v1, v0}, Lcom/tencent/turingfd/sdk/ams/ad/boolean;->a(Lcom/tencent/turingfd/sdk/ams/ad/static;)I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_a

    const/4 v3, 0x2

    if-ne v2, v3, :cond_29

    .line 6
    invoke-virtual {v1}, Lcom/tencent/turingfd/sdk/ams/ad/boolean;->r()V

    const/16 v0, -0x2719

    .line 7
    invoke-static {v0}, Lcom/tencent/turingfd/sdk/ams/ad/static;->c(I)Lcom/tencent/turingfd/sdk/ams/ad/static;

    move-result-object v0

    goto :goto_a

    :cond_29
    const/4 v3, 0x3

    if-ne v2, v3, :cond_a

    .line 8
    invoke-virtual {v1}, Lcom/tencent/turingfd/sdk/ams/ad/boolean;->r()V

    goto :goto_a
.end method

.method public static getVersionInfo()Ljava/lang/String;
    .registers 1

    .prologue
    .line 1
    invoke-static {}, Lcom/tencent/turingfd/sdk/ams/ad/char;->getVersionInfo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static init(Lcom/tencent/turingfd/sdk/ams/ad/TuringDIDConfig;)V
    .registers 1

    .prologue
    .line 1
    invoke-static {p0}, Lcom/tencent/turingfd/sdk/ams/ad/char;->a(Lcom/tencent/turingfd/sdk/ams/ad/case;)V

    return-void
.end method
