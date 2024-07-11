.class Lcom/facebook/appevents/codeless/CodelessMatcher$1;
.super Ljava/lang/Object;
.source "CodelessMatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/appevents/codeless/CodelessMatcher;->startTracking()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/appevents/codeless/CodelessMatcher;


# direct methods
.method constructor <init>(Lcom/facebook/appevents/codeless/CodelessMatcher;)V
    .registers 2
    .param p1, "this$0"    # Lcom/facebook/appevents/codeless/CodelessMatcher;

    .line 156
    iput-object p1, p0, Lcom/facebook/appevents/codeless/CodelessMatcher$1;->this$0:Lcom/facebook/appevents/codeless/CodelessMatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 159
    iget-object v0, p0, Lcom/facebook/appevents/codeless/CodelessMatcher$1;->this$0:Lcom/facebook/appevents/codeless/CodelessMatcher;

    # invokes: Lcom/facebook/appevents/codeless/CodelessMatcher;->matchViews()V
    invoke-static {v0}, Lcom/facebook/appevents/codeless/CodelessMatcher;->access$000(Lcom/facebook/appevents/codeless/CodelessMatcher;)V

    .line 160
    return-void
.end method
