.class Lcom/JoyFramework/module/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/JoyFramework/d/e$e;


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/JoyFramework/module/a;


# direct methods
.method constructor <init>(Lcom/JoyFramework/module/a;Landroid/app/Activity;)V
    .registers 3

    .prologue
    .line 87
    iput-object p1, p0, Lcom/JoyFramework/module/b;->b:Lcom/JoyFramework/module/a;

    iput-object p2, p0, Lcom/JoyFramework/module/b;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 90
    sget-boolean v0, Lcom/JoyFramework/a/a;->K:Z

    if-eqz v0, :cond_e

    .line 91
    const/4 v0, 0x0

    sput-boolean v0, Lcom/JoyFramework/a/a;->K:Z

    .line 93
    invoke-static {}, Lcom/JoyFramework/c/e;->a()Lcom/JoyFramework/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/JoyFramework/c/e;->h()V

    .line 95
    :cond_e
    iget-object v0, p0, Lcom/JoyFramework/module/b;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 96
    return-void
.end method
