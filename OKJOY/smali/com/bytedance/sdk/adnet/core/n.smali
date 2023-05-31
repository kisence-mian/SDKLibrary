.class public Lcom/bytedance/sdk/adnet/core/n;
.super Ljava/lang/Object;
.source "Response.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/adnet/core/n$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final b:Lcom/bytedance/sdk/adnet/face/a$a;

.field public final c:Lcom/bytedance/sdk/adnet/err/VAdError;

.field public d:Z

.field public e:J

.field public f:J

.field public g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public h:J


# direct methods
.method private constructor <init>(Lcom/bytedance/sdk/adnet/err/VAdError;)V
    .registers 6

    .prologue
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/adnet/core/n;->d:Z

    .line 85
    iput-wide v2, p0, Lcom/bytedance/sdk/adnet/core/n;->e:J

    .line 86
    iput-wide v2, p0, Lcom/bytedance/sdk/adnet/core/n;->f:J

    .line 89
    iput-wide v2, p0, Lcom/bytedance/sdk/adnet/core/n;->h:J

    .line 113
    iput-object v1, p0, Lcom/bytedance/sdk/adnet/core/n;->a:Ljava/lang/Object;

    .line 114
    iput-object v1, p0, Lcom/bytedance/sdk/adnet/core/n;->b:Lcom/bytedance/sdk/adnet/face/a$a;

    .line 115
    iput-object p1, p0, Lcom/bytedance/sdk/adnet/core/n;->c:Lcom/bytedance/sdk/adnet/err/VAdError;

    .line 117
    iget-wide v0, p0, Lcom/bytedance/sdk/adnet/core/n;->h:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_28

    if-eqz p1, :cond_28

    iget-object v0, p1, Lcom/bytedance/sdk/adnet/err/VAdError;->networkResponse:Lcom/bytedance/sdk/adnet/core/j;

    if-eqz v0, :cond_28

    .line 118
    iget-object v0, p1, Lcom/bytedance/sdk/adnet/err/VAdError;->networkResponse:Lcom/bytedance/sdk/adnet/core/j;

    iget v0, v0, Lcom/bytedance/sdk/adnet/core/j;->a:I

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/bytedance/sdk/adnet/core/n;->h:J

    .line 120
    :cond_28
    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Lcom/bytedance/sdk/adnet/face/a$a;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/bytedance/sdk/adnet/face/a$a;",
            ")V"
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/adnet/core/n;->d:Z

    .line 85
    iput-wide v2, p0, Lcom/bytedance/sdk/adnet/core/n;->e:J

    .line 86
    iput-wide v2, p0, Lcom/bytedance/sdk/adnet/core/n;->f:J

    .line 89
    iput-wide v2, p0, Lcom/bytedance/sdk/adnet/core/n;->h:J

    .line 107
    iput-object p1, p0, Lcom/bytedance/sdk/adnet/core/n;->a:Ljava/lang/Object;

    .line 108
    iput-object p2, p0, Lcom/bytedance/sdk/adnet/core/n;->b:Lcom/bytedance/sdk/adnet/face/a$a;

    .line 109
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/sdk/adnet/core/n;->c:Lcom/bytedance/sdk/adnet/err/VAdError;

    .line 110
    return-void
.end method

.method public static a(Lcom/bytedance/sdk/adnet/err/VAdError;)Lcom/bytedance/sdk/adnet/core/n;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bytedance/sdk/adnet/err/VAdError;",
            ")",
            "Lcom/bytedance/sdk/adnet/core/n",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 62
    new-instance v0, Lcom/bytedance/sdk/adnet/core/n;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/adnet/core/n;-><init>(Lcom/bytedance/sdk/adnet/err/VAdError;)V

    return-object v0
.end method

.method public static a(Ljava/lang/Object;Lcom/bytedance/sdk/adnet/face/a$a;)Lcom/bytedance/sdk/adnet/core/n;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/bytedance/sdk/adnet/face/a$a;",
            ")",
            "Lcom/bytedance/sdk/adnet/core/n",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 54
    new-instance v0, Lcom/bytedance/sdk/adnet/core/n;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/sdk/adnet/core/n;-><init>(Ljava/lang/Object;Lcom/bytedance/sdk/adnet/face/a$a;)V

    return-object v0
.end method


# virtual methods
.method public a(J)Lcom/bytedance/sdk/adnet/core/n;
    .registers 4

    .prologue
    .line 123
    iput-wide p1, p0, Lcom/bytedance/sdk/adnet/core/n;->e:J

    .line 124
    return-object p0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 93
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/n;->g:Ljava/util/Map;

    if-nez v0, :cond_c

    .line 94
    :cond_a
    const/4 v0, 0x0

    .line 96
    :goto_b
    return-object v0

    :cond_c
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/n;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_b
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 138
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/n;->b:Lcom/bytedance/sdk/adnet/face/a$a;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/n;->b:Lcom/bytedance/sdk/adnet/face/a$a;

    iget-object v0, v0, Lcom/bytedance/sdk/adnet/face/a$a;->h:Ljava/util/Map;

    if-nez v0, :cond_c

    :cond_a
    move-object v0, p2

    .line 142
    :cond_b
    :goto_b
    return-object v0

    .line 141
    :cond_c
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/n;->b:Lcom/bytedance/sdk/adnet/face/a$a;

    iget-object v0, v0, Lcom/bytedance/sdk/adnet/face/a$a;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 142
    if-nez v0, :cond_b

    move-object v0, p2

    goto :goto_b
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/n;->c:Lcom/bytedance/sdk/adnet/err/VAdError;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public b(J)Lcom/bytedance/sdk/adnet/core/n;
    .registers 4

    .prologue
    .line 128
    iput-wide p1, p0, Lcom/bytedance/sdk/adnet/core/n;->f:J

    .line 129
    return-object p0
.end method
