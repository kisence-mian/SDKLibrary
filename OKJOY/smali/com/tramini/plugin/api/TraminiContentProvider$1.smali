.class final Lcom/tramini/plugin/api/TraminiContentProvider$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tramini/plugin/api/TraminiContentProvider;->onCreate()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tramini/plugin/api/TraminiContentProvider;


# direct methods
.method constructor <init>(Lcom/tramini/plugin/api/TraminiContentProvider;)V
    .registers 2

    .prologue
    .line 23
    iput-object p1, p0, Lcom/tramini/plugin/api/TraminiContentProvider$1;->this$0:Lcom/tramini/plugin/api/TraminiContentProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .prologue
    .line 27
    :try_start_0
    iget-object v0, p0, Lcom/tramini/plugin/api/TraminiContentProvider$1;->this$0:Lcom/tramini/plugin/api/TraminiContentProvider;

    invoke-virtual {v0}, Lcom/tramini/plugin/api/TraminiContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1010
    invoke-static {}, Lcom/tramini/plugin/a/a/b;->a()Lcom/tramini/plugin/a/a/b;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/tramini/plugin/a/a/b;->a(Landroid/content/Context;)V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_11} :catch_12

    .line 33
    :goto_11
    return-void

    :catch_12
    move-exception v0

    goto :goto_11
.end method
