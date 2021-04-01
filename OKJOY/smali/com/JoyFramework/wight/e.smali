.class Lcom/JoyFramework/wight/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/JoyFramework/d/e$c;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/JoyFramework/wight/a;


# direct methods
.method constructor <init>(Lcom/JoyFramework/wight/a;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 201
    iput-object p1, p0, Lcom/JoyFramework/wight/e;->c:Lcom/JoyFramework/wight/a;

    iput-object p2, p0, Lcom/JoyFramework/wight/e;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/JoyFramework/wight/e;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    .prologue
    .line 204
    iget-object v0, p0, Lcom/JoyFramework/wight/e;->c:Lcom/JoyFramework/wight/a;

    iget-object v1, p0, Lcom/JoyFramework/wight/e;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/JoyFramework/wight/e;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/JoyFramework/wight/a;->a(Lcom/JoyFramework/wight/a;Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    return-void
.end method

.method public b()V
    .registers 1

    .prologue
    .line 210
    return-void
.end method
