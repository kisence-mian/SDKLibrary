.class Lcom/JoyFramework/user/OnLineUser$a;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/JoyFramework/user/OnLineUser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/JoyFramework/user/OnLineUser;


# direct methods
.method private constructor <init>(Lcom/JoyFramework/user/OnLineUser;)V
    .registers 2

    .prologue
    .line 192
    iput-object p1, p0, Lcom/JoyFramework/user/OnLineUser$a;->a:Lcom/JoyFramework/user/OnLineUser;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/JoyFramework/user/OnLineUser;Lcom/JoyFramework/user/a;)V
    .registers 3

    .prologue
    .line 192
    invoke-direct {p0, p1}, Lcom/JoyFramework/user/OnLineUser$a;-><init>(Lcom/JoyFramework/user/OnLineUser;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 196
    iget-object v0, p0, Lcom/JoyFramework/user/OnLineUser$a;->a:Lcom/JoyFramework/user/OnLineUser;

    invoke-virtual {v0}, Lcom/JoyFramework/user/OnLineUser;->sendOnLineTime()V

    .line 197
    return-void
.end method
