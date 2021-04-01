.class public Lcom/JoyFramework/remote/bean/MoreGameItem;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/JoyFramework/remote/bean/MoreGameItem$MoreGameItemType;
    }
.end annotation


# instance fields
.field private a:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "name"
    .end annotation
.end field

.field private c:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "content"
    .end annotation
.end field

.field private d:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "show"
    .end annotation
.end field

.field private e:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "address_and"
    .end annotation
.end field

.field private f:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "close"
    .end annotation
.end field

.field private g:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "icon"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 28
    iget v0, p0, Lcom/JoyFramework/remote/bean/MoreGameItem;->a:I

    return v0
.end method

.method public a(I)V
    .registers 2

    .prologue
    .line 32
    iput p1, p0, Lcom/JoyFramework/remote/bean/MoreGameItem;->a:I

    .line 33
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 40
    iput-object p1, p0, Lcom/JoyFramework/remote/bean/MoreGameItem;->b:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/JoyFramework/remote/bean/MoreGameItem;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(I)V
    .registers 2

    .prologue
    .line 78
    iput p1, p0, Lcom/JoyFramework/remote/bean/MoreGameItem;->f:I

    .line 79
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 48
    iput-object p1, p0, Lcom/JoyFramework/remote/bean/MoreGameItem;->c:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/JoyFramework/remote/bean/MoreGameItem;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 56
    iput-object p1, p0, Lcom/JoyFramework/remote/bean/MoreGameItem;->d:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public d()Ljava/lang/String;
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/JoyFramework/remote/bean/MoreGameItem;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 86
    iput-object p1, p0, Lcom/JoyFramework/remote/bean/MoreGameItem;->e:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public e()Lcom/JoyFramework/remote/bean/MoreGameItem$MoreGameItemType;
    .registers 4

    .prologue
    .line 60
    sget-object v0, Lcom/JoyFramework/remote/bean/MoreGameItem$MoreGameItemType;->a:Lcom/JoyFramework/remote/bean/MoreGameItem$MoreGameItemType;

    .line 61
    iget-object v1, p0, Lcom/JoyFramework/remote/bean/MoreGameItem;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_36

    .line 62
    iget-object v1, p0, Lcom/JoyFramework/remote/bean/MoreGameItem;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 63
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 64
    const-string v2, ".png"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_34

    const-string v2, ".jpg"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_34

    const-string v2, ".jpeg"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 65
    :cond_34
    sget-object v0, Lcom/JoyFramework/remote/bean/MoreGameItem$MoreGameItemType;->a:Lcom/JoyFramework/remote/bean/MoreGameItem$MoreGameItemType;

    .line 70
    :cond_36
    :goto_36
    return-object v0

    .line 66
    :cond_37
    const-string v2, ".mp4"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_47

    const-string v2, "avi"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 67
    :cond_47
    sget-object v0, Lcom/JoyFramework/remote/bean/MoreGameItem$MoreGameItemType;->b:Lcom/JoyFramework/remote/bean/MoreGameItem$MoreGameItemType;

    goto :goto_36
.end method

.method public e(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 94
    iput-object p1, p0, Lcom/JoyFramework/remote/bean/MoreGameItem;->g:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public f()I
    .registers 2

    .prologue
    .line 74
    iget v0, p0, Lcom/JoyFramework/remote/bean/MoreGameItem;->f:I

    return v0
.end method

.method public g()Ljava/lang/String;
    .registers 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/JoyFramework/remote/bean/MoreGameItem;->e:Ljava/lang/String;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .registers 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/JoyFramework/remote/bean/MoreGameItem;->g:Ljava/lang/String;

    return-object v0
.end method
