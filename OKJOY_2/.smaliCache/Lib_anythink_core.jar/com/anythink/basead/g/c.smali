.class public abstract Lcom/anythink/basead/g/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/basead/g/a;


# static fields
.field public static final h:Ljava/lang/String; = "extra_request_id"

.field public static final i:Ljava/lang/String; = "extra_scenario"

.field public static final j:Ljava/lang/String; = "extra_orientation"


# instance fields
.field public b:Ljava/lang/String;

.field protected c:Landroid/content/Context;

.field protected d:Lcom/anythink/core/common/d/i;

.field protected e:Ljava/lang/String;

.field protected f:Z

.field protected g:Lcom/anythink/core/common/d/p;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/anythink/core/common/d/i;Ljava/lang/String;Z)V
    .registers 6

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/basead/g/c;->b:Ljava/lang/String;

    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/basead/g/c;->c:Landroid/content/Context;

    .line 40
    iput-object p2, p0, Lcom/anythink/basead/g/c;->d:Lcom/anythink/core/common/d/i;

    .line 41
    iput-object p3, p0, Lcom/anythink/basead/g/c;->e:Ljava/lang/String;

    .line 42
    iput-boolean p4, p0, Lcom/anythink/basead/g/c;->f:Z

    .line 43
    return-void
.end method

.method private b()Lcom/anythink/basead/c/f;
    .registers 5

    .line 93
    iget-object v0, p0, Lcom/anythink/basead/g/c;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "30001"

    if-nez v0, :cond_41

    iget-object v0, p0, Lcom/anythink/basead/g/c;->d:Lcom/anythink/core/common/d/i;

    iget-object v0, v0, Lcom/anythink/core/common/d/i;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_41

    .line 96
    :cond_15
    iget-object v0, p0, Lcom/anythink/basead/g/c;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/anythink/basead/g/a/a;->a(Landroid/content/Context;)Lcom/anythink/basead/g/a/a;

    move-result-object v0

    iget-object v2, p0, Lcom/anythink/basead/g/c;->d:Lcom/anythink/core/common/d/i;

    iget-object v2, v2, Lcom/anythink/core/common/d/i;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/anythink/basead/g/c;->e:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/anythink/basead/g/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/common/d/p;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/basead/g/c;->g:Lcom/anythink/core/common/d/p;

    .line 98
    if-nez v0, :cond_30

    .line 99
    const-string v0, "No fill, offer = null!"

    invoke-static {v1, v0}, Lcom/anythink/basead/c/g;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/basead/c/f;

    move-result-object v0

    return-object v0

    .line 101
    :cond_30
    iget-object v0, p0, Lcom/anythink/basead/g/c;->d:Lcom/anythink/core/common/d/i;

    iget-object v0, v0, Lcom/anythink/core/common/d/i;->j:Lcom/anythink/core/common/d/j;

    if-nez v0, :cond_3f

    .line 102
    const-string v0, "30002"

    const-string v1, "No fill, setting = null!"

    invoke-static {v0, v1}, Lcom/anythink/basead/c/g;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/basead/c/f;

    move-result-object v0

    return-object v0

    .line 104
    :cond_3f
    const/4 v0, 0x0

    return-object v0

    .line 94
    :cond_41
    :goto_41
    const-string v0, "offerid\u3001placementid can not be null!"

    invoke-static {v1, v0}, Lcom/anythink/basead/c/g;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/basead/c/f;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/anythink/basead/f/c;)V
    .registers 7

    .line 48
    nop

    .line 1093
    :try_start_1
    iget-object v0, p0, Lcom/anythink/basead/g/c;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_7} :catch_68

    const-string v1, "30001"

    if-nez v0, :cond_42

    :try_start_b
    iget-object v0, p0, Lcom/anythink/basead/g/c;->d:Lcom/anythink/core/common/d/i;

    iget-object v0, v0, Lcom/anythink/core/common/d/i;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_42

    .line 1096
    :cond_16
    iget-object v0, p0, Lcom/anythink/basead/g/c;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/anythink/basead/g/a/a;->a(Landroid/content/Context;)Lcom/anythink/basead/g/a/a;

    move-result-object v0

    iget-object v2, p0, Lcom/anythink/basead/g/c;->d:Lcom/anythink/core/common/d/i;

    iget-object v2, v2, Lcom/anythink/core/common/d/i;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/anythink/basead/g/c;->e:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/anythink/basead/g/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/common/d/p;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/basead/g/c;->g:Lcom/anythink/core/common/d/p;

    .line 1098
    if-nez v0, :cond_31

    .line 1099
    const-string v0, "No fill, offer = null!"

    invoke-static {v1, v0}, Lcom/anythink/basead/c/g;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/basead/c/f;

    move-result-object v0

    goto :goto_48

    .line 1101
    :cond_31
    iget-object v0, p0, Lcom/anythink/basead/g/c;->d:Lcom/anythink/core/common/d/i;

    iget-object v0, v0, Lcom/anythink/core/common/d/i;->j:Lcom/anythink/core/common/d/j;

    if-nez v0, :cond_40

    .line 1102
    const-string v0, "30002"

    const-string v1, "No fill, setting = null!"

    invoke-static {v0, v1}, Lcom/anythink/basead/c/g;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/basead/c/f;

    move-result-object v0

    goto :goto_48

    .line 1104
    :cond_40
    const/4 v0, 0x0

    goto :goto_48

    .line 1094
    :cond_42
    :goto_42
    const-string v0, "offerid\u3001placementid can not be null!"

    invoke-static {v1, v0}, Lcom/anythink/basead/c/g;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/basead/c/f;

    move-result-object v0

    .line 48
    :goto_48
    nop

    .line 49
    if-eqz v0, :cond_4f

    .line 51
    invoke-interface {p1, v0}, Lcom/anythink/basead/f/c;->onAdLoadFailed(Lcom/anythink/basead/c/f;)V

    .line 53
    return-void

    .line 56
    :cond_4f
    iget-object v0, p0, Lcom/anythink/basead/g/c;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/anythink/basead/g/a/a;->a(Landroid/content/Context;)Lcom/anythink/basead/g/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/basead/g/c;->d:Lcom/anythink/core/common/d/i;

    iget-object v1, v1, Lcom/anythink/core/common/d/i;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/anythink/basead/g/c;->g:Lcom/anythink/core/common/d/p;

    iget-object v3, p0, Lcom/anythink/basead/g/c;->d:Lcom/anythink/core/common/d/i;

    iget-object v3, v3, Lcom/anythink/core/common/d/i;->j:Lcom/anythink/core/common/d/j;

    new-instance v4, Lcom/anythink/basead/g/c$1;

    invoke-direct {v4, p0, p1}, Lcom/anythink/basead/g/c$1;-><init>(Lcom/anythink/basead/g/c;Lcom/anythink/basead/f/c;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/anythink/basead/g/a/a;->a(Ljava/lang/String;Lcom/anythink/core/common/d/p;Lcom/anythink/core/common/d/j;Lcom/anythink/basead/a/a/a$a;)V
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_67} :catch_68

    .line 76
    return-void

    .line 71
    :catch_68
    move-exception v0

    .line 72
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 74
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-9999"

    invoke-static {v1, v0}, Lcom/anythink/basead/c/g;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/basead/c/f;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/anythink/basead/f/c;->onAdLoadFailed(Lcom/anythink/basead/c/f;)V

    .line 77
    return-void
.end method

.method public a()Z
    .registers 5

    .line 82
    :try_start_0
    invoke-virtual {p0}, Lcom/anythink/basead/g/c;->d()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 83
    iget-object v0, p0, Lcom/anythink/basead/g/c;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/anythink/basead/g/a/a;->a(Landroid/content/Context;)Lcom/anythink/basead/g/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/basead/g/c;->g:Lcom/anythink/core/common/d/p;

    iget-object v2, p0, Lcom/anythink/basead/g/c;->d:Lcom/anythink/core/common/d/i;

    iget-object v2, v2, Lcom/anythink/core/common/d/i;->j:Lcom/anythink/core/common/d/j;

    iget-boolean v3, p0, Lcom/anythink/basead/g/c;->f:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/anythink/basead/g/a/a;->a(Lcom/anythink/core/common/d/p;Lcom/anythink/core/common/d/j;Z)Z

    move-result v0
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_18} :catch_1a

    return v0

    .line 87
    :cond_19
    goto :goto_1e

    .line 86
    :catch_1a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 88
    :goto_1e
    const/4 v0, 0x0

    return v0
.end method

.method public c()V
    .registers 1

    .line 131
    return-void
.end method

.method protected final d()Z
    .registers 5

    .line 108
    iget-object v0, p0, Lcom/anythink/basead/g/c;->c:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_d

    .line 109
    iget-object v0, p0, Lcom/anythink/basead/g/c;->b:Ljava/lang/String;

    const-string v2, "isReady() context = null!"

    invoke-static {v0, v2}, Lcom/anythink/core/common/g/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    return v1

    .line 111
    :cond_d
    iget-object v0, p0, Lcom/anythink/basead/g/c;->d:Lcom/anythink/core/common/d/i;

    iget-object v0, v0, Lcom/anythink/core/common/d/i;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 112
    iget-object v0, p0, Lcom/anythink/basead/g/c;->b:Ljava/lang/String;

    const-string v2, "isReady() mPlacementId = null!"

    invoke-static {v0, v2}, Lcom/anythink/core/common/g/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    return v1

    .line 114
    :cond_1f
    iget-object v0, p0, Lcom/anythink/basead/g/c;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 115
    iget-object v0, p0, Lcom/anythink/basead/g/c;->b:Ljava/lang/String;

    const-string v2, "isReady() mOfferId = null!"

    invoke-static {v0, v2}, Lcom/anythink/core/common/g/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    return v1

    .line 119
    :cond_2f
    iget-object v0, p0, Lcom/anythink/basead/g/c;->g:Lcom/anythink/core/common/d/p;

    if-nez v0, :cond_4f

    .line 120
    iget-object v0, p0, Lcom/anythink/basead/g/c;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/anythink/basead/g/a/a;->a(Landroid/content/Context;)Lcom/anythink/basead/g/a/a;

    move-result-object v0

    iget-object v2, p0, Lcom/anythink/basead/g/c;->d:Lcom/anythink/core/common/d/i;

    iget-object v2, v2, Lcom/anythink/core/common/d/i;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/anythink/basead/g/c;->e:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/anythink/basead/g/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/common/d/p;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/basead/g/c;->g:Lcom/anythink/core/common/d/p;

    .line 121
    if-nez v0, :cond_4f

    .line 122
    iget-object v0, p0, Lcom/anythink/basead/g/c;->b:Ljava/lang/String;

    const-string v2, "isReady() MyOffer no exist!"

    invoke-static {v0, v2}, Lcom/anythink/core/common/g/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    return v1

    .line 126
    :cond_4f
    const/4 v0, 0x1

    return v0
.end method
