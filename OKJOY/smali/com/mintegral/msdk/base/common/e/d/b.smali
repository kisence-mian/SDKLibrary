.class public abstract Lcom/mintegral/msdk/base/common/e/d/b;
.super Lcom/mintegral/msdk/base/common/net/a/f;
.source "ReportResponseHandler.java"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 12
    const-class v0, Lcom/mintegral/msdk/base/common/e/d/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mintegral/msdk/base/common/e/d/b;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/mintegral/msdk/base/common/net/a/f;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 10
    check-cast p1, Ljava/lang/String;

    .line 1017
    invoke-virtual {p0, p1}, Lcom/mintegral/msdk/base/common/e/d/b;->b(Ljava/lang/String;)V

    .line 10
    return-void
.end method

.method public abstract b(Ljava/lang/String;)V
.end method

.method public final d(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 17
    invoke-virtual {p0, p1}, Lcom/mintegral/msdk/base/common/e/d/b;->b(Ljava/lang/String;)V

    .line 18
    return-void
.end method
