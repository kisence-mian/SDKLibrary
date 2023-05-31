.class Lcom/JoyFramework/wight/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/JoyFramework/d/e$c;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/JoyFramework/wight/n;


# direct methods
.method constructor <init>(Lcom/JoyFramework/wight/n;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 198
    iput-object p1, p0, Lcom/JoyFramework/wight/r;->b:Lcom/JoyFramework/wight/n;

    iput-object p2, p0, Lcom/JoyFramework/wight/r;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 201
    iget-object v0, p0, Lcom/JoyFramework/wight/r;->b:Lcom/JoyFramework/wight/n;

    iget-object v1, p0, Lcom/JoyFramework/wight/r;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/JoyFramework/wight/n;->a(Lcom/JoyFramework/wight/n;Ljava/lang/String;)V

    .line 202
    return-void
.end method

.method public b()V
    .registers 1

    .prologue
    .line 207
    return-void
.end method
