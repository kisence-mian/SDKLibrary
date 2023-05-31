.class public final Lcom/mintegral/msdk/mtgbanner/common/a/a;
.super Ljava/lang/Object;
.source "BannerReportData.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:I

.field private h:Z


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/mintegral/msdk/mtgbanner/common/a/a;
    .registers 1

    .prologue
    .line 33
    new-instance v0, Lcom/mintegral/msdk/mtgbanner/common/a/a;

    invoke-direct {v0}, Lcom/mintegral/msdk/mtgbanner/common/a/a;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final a(I)Lcom/mintegral/msdk/mtgbanner/common/a/a;
    .registers 2

    .prologue
    .line 110
    iput p1, p0, Lcom/mintegral/msdk/mtgbanner/common/a/a;->g:I

    .line 111
    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/mintegral/msdk/mtgbanner/common/a/a;
    .registers 2

    .prologue
    .line 37
    iput-object p1, p0, Lcom/mintegral/msdk/mtgbanner/common/a/a;->a:Ljava/lang/String;

    .line 38
    return-object p0
.end method

.method public final a(Z)Lcom/mintegral/msdk/mtgbanner/common/a/a;
    .registers 2

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/mintegral/msdk/mtgbanner/common/a/a;->h:Z

    .line 26
    return-object p0
.end method

.method public final b(Ljava/lang/String;)Lcom/mintegral/msdk/mtgbanner/common/a/a;
    .registers 2

    .prologue
    .line 51
    iput-object p1, p0, Lcom/mintegral/msdk/mtgbanner/common/a/a;->b:Ljava/lang/String;

    .line 52
    return-object p0
.end method

.method public final b()Ljava/lang/String;
    .registers 3

    .prologue
    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 117
    iget-object v1, p0, Lcom/mintegral/msdk/mtgbanner/common/a/a;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 118
    const-string v1, "unit_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/mtgbanner/common/a/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 120
    :cond_1f
    iget-object v1, p0, Lcom/mintegral/msdk/mtgbanner/common/a/a;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_39

    .line 121
    const-string v1, "cid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/mtgbanner/common/a/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 123
    :cond_39
    iget-object v1, p0, Lcom/mintegral/msdk/mtgbanner/common/a/a;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_53

    .line 124
    const-string v1, "rid_n="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/mtgbanner/common/a/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 126
    :cond_53
    iget-object v1, p0, Lcom/mintegral/msdk/mtgbanner/common/a/a;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6d

    .line 127
    const-string v1, "creative_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/mtgbanner/common/a/a;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 129
    :cond_6d
    iget-object v1, p0, Lcom/mintegral/msdk/mtgbanner/common/a/a;->f:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_87

    .line 130
    const-string v1, "reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/mtgbanner/common/a/a;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 132
    :cond_87
    iget v1, p0, Lcom/mintegral/msdk/mtgbanner/common/a/a;->g:I

    if-eqz v1, :cond_9d

    .line 133
    const-string v1, "result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mintegral/msdk/mtgbanner/common/a/a;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 135
    :cond_9d
    iget-boolean v1, p0, Lcom/mintegral/msdk/mtgbanner/common/a/a;->h:Z

    if-eqz v1, :cond_a7

    .line 136
    const-string v1, "hb=1&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 138
    :cond_a7
    const-string v1, "network_type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    invoke-static {}, Lcom/mintegral/msdk/base/utils/c;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 140
    iget-object v1, p0, Lcom/mintegral/msdk/mtgbanner/common/a/a;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d6

    .line 141
    const-string v1, "key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/mtgbanner/common/a/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 144
    :cond_d6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c(Ljava/lang/String;)Lcom/mintegral/msdk/mtgbanner/common/a/a;
    .registers 2

    .prologue
    .line 69
    iput-object p1, p0, Lcom/mintegral/msdk/mtgbanner/common/a/a;->c:Ljava/lang/String;

    .line 70
    return-object p0
.end method

.method public final d(Ljava/lang/String;)Lcom/mintegral/msdk/mtgbanner/common/a/a;
    .registers 2

    .prologue
    .line 78
    iput-object p1, p0, Lcom/mintegral/msdk/mtgbanner/common/a/a;->d:Ljava/lang/String;

    .line 79
    return-object p0
.end method

.method public final e(Ljava/lang/String;)Lcom/mintegral/msdk/mtgbanner/common/a/a;
    .registers 2

    .prologue
    .line 87
    iput-object p1, p0, Lcom/mintegral/msdk/mtgbanner/common/a/a;->e:Ljava/lang/String;

    .line 88
    return-object p0
.end method

.method public final f(Ljava/lang/String;)Lcom/mintegral/msdk/mtgbanner/common/a/a;
    .registers 2

    .prologue
    .line 96
    iput-object p1, p0, Lcom/mintegral/msdk/mtgbanner/common/a/a;->f:Ljava/lang/String;

    .line 97
    return-object p0
.end method
