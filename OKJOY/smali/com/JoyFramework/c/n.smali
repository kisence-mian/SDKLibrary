.class Lcom/JoyFramework/c/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/JoyFramework/d/e$e;


# instance fields
.field final synthetic a:Lcom/JoyFramework/c/m;


# direct methods
.method constructor <init>(Lcom/JoyFramework/c/m;)V
    .registers 2

    .prologue
    .line 1425
    iput-object p1, p0, Lcom/JoyFramework/c/n;->a:Lcom/JoyFramework/c/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    .prologue
    .line 1428
    invoke-static {}, Lcom/JoyFramework/c/e;->a()Lcom/JoyFramework/c/e;

    move-result-object v0

    const/4 v1, 0x6

    const-string v2, "logout"

    invoke-virtual {v0, v1, v2}, Lcom/JoyFramework/c/e;->a(ILjava/lang/Object;)V

    .line 1429
    return-void
.end method
