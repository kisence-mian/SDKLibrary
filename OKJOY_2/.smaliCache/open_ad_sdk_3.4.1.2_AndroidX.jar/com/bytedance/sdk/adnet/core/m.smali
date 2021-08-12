.class public Lcom/bytedance/sdk/adnet/core/m;
.super Ljava/lang/Object;
.source "Response.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/adnet/core/m$a;
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
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public h:J


# direct methods
.method private constructor <init>(Lcom/bytedance/sdk/adnet/err/VAdError;)V
    .registers 5

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/adnet/core/m;->d:Z

    .line 85
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/bytedance/sdk/adnet/core/m;->e:J

    .line 86
    iput-wide v0, p0, Lcom/bytedance/sdk/adnet/core/m;->f:J

    .line 89
    iput-wide v0, p0, Lcom/bytedance/sdk/adnet/core/m;->h:J

    .line 116
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/bytedance/sdk/adnet/core/m;->a:Ljava/lang/Object;

    .line 117
    iput-object v2, p0, Lcom/bytedance/sdk/adnet/core/m;->b:Lcom/bytedance/sdk/adnet/face/a$a;

    .line 118
    iput-object p1, p0, Lcom/bytedance/sdk/adnet/core/m;->c:Lcom/bytedance/sdk/adnet/err/VAdError;

    .line 120
    cmp-long v0, v0, v0

    if-nez v0, :cond_26

    if-eqz p1, :cond_26

    iget-object v0, p1, Lcom/bytedance/sdk/adnet/err/VAdError;->networkResponse:Lcom/bytedance/sdk/adnet/core/i;

    if-eqz v0, :cond_26

    .line 121
    iget-object p1, p1, Lcom/bytedance/sdk/adnet/err/VAdError;->networkResponse:Lcom/bytedance/sdk/adnet/core/i;

    iget p1, p1, Lcom/bytedance/sdk/adnet/core/i;->a:I

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/bytedance/sdk/adnet/core/m;->h:J

    .line 123
    :cond_26
    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Lcom/bytedance/sdk/adnet/face/a$a;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/bytedance/sdk/adnet/face/a$a;",
            ")V"
        }
    .end annotation

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/adnet/core/m;->d:Z

    .line 85
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/bytedance/sdk/adnet/core/m;->e:J

    .line 86
    iput-wide v0, p0, Lcom/bytedance/sdk/adnet/core/m;->f:J

    .line 89
    iput-wide v0, p0, Lcom/bytedance/sdk/adnet/core/m;->h:J

    .line 107
    iput-object p1, p0, Lcom/bytedance/sdk/adnet/core/m;->a:Ljava/lang/Object;

    .line 108
    iput-object p2, p0, Lcom/bytedance/sdk/adnet/core/m;->b:Lcom/bytedance/sdk/adnet/face/a$a;

    .line 109
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/bytedance/sdk/adnet/core/m;->c:Lcom/bytedance/sdk/adnet/err/VAdError;

    .line 110
    if-eqz p2, :cond_1c

    .line 111
    iget p1, p2, Lcom/bytedance/sdk/adnet/face/a$a;->a:I

    int-to-long p1, p1

    iput-wide p1, p0, Lcom/bytedance/sdk/adnet/core/m;->h:J

    .line 113
    :cond_1c
    return-void
.end method

.method public static a(Lcom/bytedance/sdk/adnet/err/VAdError;)Lcom/bytedance/sdk/adnet/core/m;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bytedance/sdk/adnet/err/VAdError;",
            ")",
            "Lcom/bytedance/sdk/adnet/core/m<",
            "TT;>;"
        }
    .end annotation

    .line 62
    new-instance v0, Lcom/bytedance/sdk/adnet/core/m;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/adnet/core/m;-><init>(Lcom/bytedance/sdk/adnet/err/VAdError;)V

    return-object v0
.end method

.method public static a(Ljava/lang/Object;Lcom/bytedance/sdk/adnet/face/a$a;)Lcom/bytedance/sdk/adnet/core/m;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/bytedance/sdk/adnet/face/a$a;",
            ")",
            "Lcom/bytedance/sdk/adnet/core/m<",
            "TT;>;"
        }
    .end annotation

    .line 54
    new-instance v0, Lcom/bytedance/sdk/adnet/core/m;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/sdk/adnet/core/m;-><init>(Ljava/lang/Object;Lcom/bytedance/sdk/adnet/face/a$a;)V

    return-object v0
.end method


# virtual methods
.method public a(J)Lcom/bytedance/sdk/adnet/core/m;
    .registers 3

    .line 126
    iput-wide p1, p0, Lcom/bytedance/sdk/adnet/core/m;->e:J

    .line 127
    return-object p0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    .line 93
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/m;->g:Ljava/util/Map;

    if-nez v0, :cond_b

    goto :goto_10

    .line 96
    :cond_b
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 94
    :cond_10
    :goto_10
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 141
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/m;->b:Lcom/bytedance/sdk/adnet/face/a$a;

    if-eqz v0, :cond_17

    iget-object v0, v0, Lcom/bytedance/sdk/adnet/face/a$a;->h:Ljava/util/Map;

    if-nez v0, :cond_9

    goto :goto_17

    .line 144
    :cond_9
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/m;->b:Lcom/bytedance/sdk/adnet/face/a$a;

    iget-object v0, v0, Lcom/bytedance/sdk/adnet/face/a$a;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 145
    if-eqz p1, :cond_16

    move-object p2, p1

    :cond_16
    return-object p2

    .line 142
    :cond_17
    :goto_17
    return-object p2
.end method

.method public a()Z
    .registers 2

    .line 103
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/m;->c:Lcom/bytedance/sdk/adnet/err/VAdError;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public b(J)Lcom/bytedance/sdk/adnet/core/m;
    .registers 3

    .line 131
    iput-wide p1, p0, Lcom/bytedance/sdk/adnet/core/m;->f:J

    .line 132
    return-object p0
.end method
