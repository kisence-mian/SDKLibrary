.class public final Lcom/mintegral/msdk/videocommon/a$a;
.super Ljava/lang/Object;
.source "TemplateWebviewCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/videocommon/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;

.field private b:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;
    .registers 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/a$a;->a:Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;

    return-object v0
.end method

.method public final a(Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;)V
    .registers 2

    .prologue
    .line 36
    iput-object p1, p0, Lcom/mintegral/msdk/videocommon/a$a;->a:Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;

    .line 37
    return-void
.end method

.method public final b()Z
    .registers 2

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/mintegral/msdk/videocommon/a$a;->b:Z

    return v0
.end method

.method public final c()V
    .registers 2

    .prologue
    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mintegral/msdk/videocommon/a$a;->b:Z

    .line 45
    return-void
.end method
