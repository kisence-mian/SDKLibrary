.class Lcom/JoyFramework/module/point/a/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/JoyFramework/module/point/a/a$a;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/JoyFramework/module/point/a/a;


# direct methods
.method constructor <init>(Lcom/JoyFramework/module/point/a/a;Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 132
    iput-object p1, p0, Lcom/JoyFramework/module/point/a/b;->b:Lcom/JoyFramework/module/point/a/a;

    iput-object p2, p0, Lcom/JoyFramework/module/point/a/b;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .registers 4

    .prologue
    .line 135
    if-eqz p1, :cond_8

    .line 136
    iget-object v0, p0, Lcom/JoyFramework/module/point/a/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/JoyFramework/module/point/a/a/d;->b(Landroid/content/Context;)V

    .line 140
    :goto_7
    return-void

    .line 138
    :cond_8
    const-string v0, "FloatWindowManager"

    const-string v1, "ROM:360, user manually refuse OVERLAY_PERMISSION"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7
.end method
