.class final Lcom/tapjoy/internal/hg$1;
.super Lcom/tapjoy/TJContentActivity$AbstractContentProducer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/internal/hg;->a(Lcom/tapjoy/internal/hc;Lcom/tapjoy/internal/fx;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tapjoy/internal/hc;

.field final synthetic b:Lcom/tapjoy/internal/fx;

.field final synthetic c:Lcom/tapjoy/internal/hg;


# direct methods
.method constructor <init>(Lcom/tapjoy/internal/hg;Lcom/tapjoy/internal/hc;Lcom/tapjoy/internal/fx;)V
    .registers 4

    .line 121
    iput-object p1, p0, Lcom/tapjoy/internal/hg$1;->c:Lcom/tapjoy/internal/hg;

    iput-object p2, p0, Lcom/tapjoy/internal/hg$1;->a:Lcom/tapjoy/internal/hc;

    iput-object p3, p0, Lcom/tapjoy/internal/hg$1;->b:Lcom/tapjoy/internal/fx;

    invoke-direct {p0}, Lcom/tapjoy/TJContentActivity$AbstractContentProducer;-><init>()V

    return-void
.end method


# virtual methods
.method public final dismiss(Landroid/app/Activity;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;

    .line 135
    iget-object v0, p0, Lcom/tapjoy/internal/hg$1;->c:Lcom/tapjoy/internal/hg;

    invoke-static {v0}, Lcom/tapjoy/internal/hg;->a(Lcom/tapjoy/internal/hg;)V

    .line 136
    return-void
.end method

.method public final show(Landroid/app/Activity;)V
    .registers 6
    .param p1, "activity"    # Landroid/app/Activity;

    .line 125
    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/internal/hg$1;->c:Lcom/tapjoy/internal/hg;

    iget-object v1, p0, Lcom/tapjoy/internal/hg$1;->a:Lcom/tapjoy/internal/hc;

    iget-object v2, p0, Lcom/tapjoy/internal/hg$1;->b:Lcom/tapjoy/internal/fx;

    invoke-static {v0, p1, v1, v2}, Lcom/tapjoy/internal/hg;->a(Lcom/tapjoy/internal/hg;Landroid/app/Activity;Lcom/tapjoy/internal/hc;Lcom/tapjoy/internal/fx;)V
    :try_end_9
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_9} :catch_a

    .line 130
    return-void

    .line 126
    :catch_a
    move-exception v0

    .line 127
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/tapjoy/internal/hg$1;->c:Lcom/tapjoy/internal/hg;

    iget-object v2, v2, Lcom/tapjoy/internal/hg;->a:Ljava/lang/String;

    aput-object v2, v0, v1

    const-string v1, "Failed to show the content for \"{}\" caused by invalid activity"

    invoke-static {v1, v0}, Lcom/tapjoy/internal/gy;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 129
    iget-object v0, p0, Lcom/tapjoy/internal/hg$1;->a:Lcom/tapjoy/internal/hc;

    iget-object v1, p0, Lcom/tapjoy/internal/hg$1;->c:Lcom/tapjoy/internal/hg;

    iget-object v1, v1, Lcom/tapjoy/internal/hg;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/tapjoy/internal/hg$1;->c:Lcom/tapjoy/internal/hg;

    iget-object v2, v2, Lcom/tapjoy/internal/hg;->f:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/tapjoy/internal/hc;->a(Ljava/lang/String;Ljava/lang/String;Lcom/tapjoy/internal/gn;)V

    .line 131
    return-void
.end method
