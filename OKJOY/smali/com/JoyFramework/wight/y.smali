.class Lcom/JoyFramework/wight/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/JoyFramework/wight/UnderlinePageIndicator;


# direct methods
.method constructor <init>(Lcom/JoyFramework/wight/UnderlinePageIndicator;)V
    .registers 2

    .prologue
    .line 134
    iput-object p1, p0, Lcom/JoyFramework/wight/y;->a:Lcom/JoyFramework/wight/UnderlinePageIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/JoyFramework/wight/y;->a:Lcom/JoyFramework/wight/UnderlinePageIndicator;

    invoke-static {v0}, Lcom/JoyFramework/wight/UnderlinePageIndicator;->b(Lcom/JoyFramework/wight/UnderlinePageIndicator;)V

    .line 139
    return-void
.end method
