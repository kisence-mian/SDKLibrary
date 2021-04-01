.class Lcom/JoyFramework/d/aw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/JoyFramework/d/av;


# direct methods
.method constructor <init>(Lcom/JoyFramework/d/av;)V
    .registers 2

    .prologue
    .line 146
    iput-object p1, p0, Lcom/JoyFramework/d/aw;->a:Lcom/JoyFramework/d/av;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .prologue
    .line 150
    iget-object v0, p0, Lcom/JoyFramework/d/aw;->a:Lcom/JoyFramework/d/av;

    iget-object v1, v0, Lcom/JoyFramework/d/av;->f:Lcom/JoyFramework/d/au;

    iget-object v0, p0, Lcom/JoyFramework/d/aw;->a:Lcom/JoyFramework/d/av;

    iget-object v2, v0, Lcom/JoyFramework/d/av;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/JoyFramework/d/aw;->a:Lcom/JoyFramework/d/av;

    iget-object v3, v0, Lcom/JoyFramework/d/av;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/JoyFramework/d/aw;->a:Lcom/JoyFramework/d/av;

    iget-object v4, v0, Lcom/JoyFramework/d/av;->d:Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/JoyFramework/d/aw;->a:Lcom/JoyFramework/d/av;

    iget-object v0, v0, Lcom/JoyFramework/d/av;->f:Lcom/JoyFramework/d/au;

    invoke-static {v0}, Lcom/JoyFramework/d/au;->a(Lcom/JoyFramework/d/au;)I

    move-result v0

    int-to-long v6, v0

    const/4 v8, 0x1

    invoke-static/range {v1 .. v8}, Lcom/JoyFramework/d/au;->a(Lcom/JoyFramework/d/au;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJZ)V

    .line 151
    return-void
.end method
