.class public final Lcom/mintegral/msdk/base/entity/o;
.super Ljava/lang/Object;
.source "ReportData.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/mintegral/msdk/base/entity/o;->a:Ljava/lang/String;

    .line 35
    iput-object p2, p0, Lcom/mintegral/msdk/base/entity/o;->b:Ljava/lang/String;

    .line 36
    iput-object p3, p0, Lcom/mintegral/msdk/base/entity/o;->c:Ljava/lang/String;

    .line 37
    iput-object p4, p0, Lcom/mintegral/msdk/base/entity/o;->d:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/mintegral/msdk/base/entity/o;->a:Ljava/lang/String;

    .line 44
    iput-object p2, p0, Lcom/mintegral/msdk/base/entity/o;->b:Ljava/lang/String;

    .line 45
    iput-object p3, p0, Lcom/mintegral/msdk/base/entity/o;->c:Ljava/lang/String;

    .line 46
    iput-object p4, p0, Lcom/mintegral/msdk/base/entity/o;->d:Ljava/lang/String;

    .line 47
    iput p5, p0, Lcom/mintegral/msdk/base/entity/o;->e:I

    .line 48
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/mintegral/msdk/base/entity/o;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 25
    iput-object p1, p0, Lcom/mintegral/msdk/base/entity/o;->d:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/mintegral/msdk/base/entity/o;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 71
    iput-object p1, p0, Lcom/mintegral/msdk/base/entity/o;->c:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public final c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/mintegral/msdk/base/entity/o;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .registers 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/mintegral/msdk/base/entity/o;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final e()I
    .registers 2

    .prologue
    .line 75
    iget v0, p0, Lcom/mintegral/msdk/base/entity/o;->e:I

    return v0
.end method
