.class Lcom/JoyFramework/d/az;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/JoyFramework/d/ay;


# direct methods
.method constructor <init>(Lcom/JoyFramework/d/ay;)V
    .registers 2

    .prologue
    .line 284
    iput-object p1, p0, Lcom/JoyFramework/d/az;->a:Lcom/JoyFramework/d/ay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .prologue
    const/4 v5, 0x0

    .line 288
    iget-object v0, p0, Lcom/JoyFramework/d/az;->a:Lcom/JoyFramework/d/ay;

    iget-object v1, v0, Lcom/JoyFramework/d/ay;->d:Lcom/JoyFramework/d/au;

    iget-object v0, p0, Lcom/JoyFramework/d/az;->a:Lcom/JoyFramework/d/ay;

    iget-object v2, v0, Lcom/JoyFramework/d/ay;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/JoyFramework/d/az;->a:Lcom/JoyFramework/d/ay;

    iget-object v3, v0, Lcom/JoyFramework/d/ay;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/JoyFramework/d/az;->a:Lcom/JoyFramework/d/ay;

    iget-object v4, v0, Lcom/JoyFramework/d/ay;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/JoyFramework/d/az;->a:Lcom/JoyFramework/d/ay;

    iget-object v0, v0, Lcom/JoyFramework/d/ay;->d:Lcom/JoyFramework/d/au;

    invoke-static {v0}, Lcom/JoyFramework/d/au;->c(Lcom/JoyFramework/d/au;)I

    move-result v0

    int-to-long v6, v0

    move v8, v5

    invoke-static/range {v1 .. v8}, Lcom/JoyFramework/d/au;->a(Lcom/JoyFramework/d/au;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJZ)V

    .line 289
    return-void
.end method
