.class public Lcom/JoyFramework/remote/bean/d$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/JoyFramework/remote/bean/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/JoyFramework/remote/bean/d;

.field private b:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "type"
    .end annotation
.end field

.field private c:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "appId"
    .end annotation
.end field

.field private d:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "appKey"
    .end annotation
.end field

.field private e:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "list"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/JoyFramework/remote/bean/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/JoyFramework/remote/bean/d;)V
    .registers 2

    .prologue
    .line 20
    iput-object p1, p0, Lcom/JoyFramework/remote/bean/d$a;->a:Lcom/JoyFramework/remote/bean/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 31
    iget v0, p0, Lcom/JoyFramework/remote/bean/d$a;->b:I

    return v0
.end method

.method public a(I)V
    .registers 2

    .prologue
    .line 35
    iput p1, p0, Lcom/JoyFramework/remote/bean/d$a;->b:I

    .line 36
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 43
    iput-object p1, p0, Lcom/JoyFramework/remote/bean/d$a;->c:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public a(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/JoyFramework/remote/bean/b;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 59
    iput-object p1, p0, Lcom/JoyFramework/remote/bean/d$a;->e:Ljava/util/List;

    .line 60
    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/JoyFramework/remote/bean/d$a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 51
    iput-object p1, p0, Lcom/JoyFramework/remote/bean/d$a;->d:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/JoyFramework/remote/bean/d$a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/JoyFramework/remote/bean/b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lcom/JoyFramework/remote/bean/d$a;->e:Ljava/util/List;

    return-object v0
.end method
