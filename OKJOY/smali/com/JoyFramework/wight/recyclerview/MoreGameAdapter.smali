.class public Lcom/JoyFramework/wight/recyclerview/MoreGameAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/JoyFramework/wight/recyclerview/MoreGameAdapter$a;,
        Lcom/JoyFramework/wight/recyclerview/MoreGameAdapter$OnItemClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/JoyFramework/wight/recyclerview/MoreGameAdapter$a;",
        ">;"
    }
.end annotation


# instance fields
.field private mIconList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public onItemClickListener:Lcom/JoyFramework/wight/recyclerview/MoreGameAdapter$OnItemClickListener;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 23
    if-nez p1, :cond_6

    .line 26
    :goto_5
    return-void

    .line 25
    :cond_6
    iput-object p1, p0, Lcom/JoyFramework/wight/recyclerview/MoreGameAdapter;->mIconList:Ljava/util/List;

    goto :goto_5
.end method


# virtual methods
.method public getItemCount()I
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/JoyFramework/wight/recyclerview/MoreGameAdapter;->mIconList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getLocalBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 3

    .prologue
    .line 87
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 88
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_8} :catch_a

    move-result-object v0

    .line 92
    :goto_9
    return-object v0

    .line 90
    :catch_a
    move-exception v0

    .line 92
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .prologue
    .line 18
    check-cast p1, Lcom/JoyFramework/wight/recyclerview/MoreGameAdapter$a;

    invoke-virtual {p0, p1, p2}, Lcom/JoyFramework/wight/recyclerview/MoreGameAdapter;->onBindViewHolder(Lcom/JoyFramework/wight/recyclerview/MoreGameAdapter$a;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/JoyFramework/wight/recyclerview/MoreGameAdapter$a;I)V
    .registers 5

    .prologue
    .line 44
    iget-object v0, p0, Lcom/JoyFramework/wight/recyclerview/MoreGameAdapter;->mIconList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/JoyFramework/wight/recyclerview/MoreGameAdapter;->getLocalBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 45
    if-eqz v0, :cond_1c

    .line 46
    iget-object v1, p1, Lcom/JoyFramework/wight/recyclerview/MoreGameAdapter$a;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 47
    iget-object v0, p1, Lcom/JoyFramework/wight/recyclerview/MoreGameAdapter$a;->a:Landroid/widget/ImageView;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 50
    :cond_1c
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .registers 4

    .prologue
    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/JoyFramework/wight/recyclerview/MoreGameAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/JoyFramework/wight/recyclerview/MoreGameAdapter$a;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/JoyFramework/wight/recyclerview/MoreGameAdapter$a;
    .registers 7

    .prologue
    .line 36
    new-instance v0, Lcom/JoyFramework/wight/recyclerview/MoreGameAdapter$a;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 37
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "joy_item_more_game"

    invoke-static {v2, v3}, Lcom/JoyFramework/d/as;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    .line 36
    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/JoyFramework/wight/recyclerview/MoreGameAdapter$a;-><init>(Lcom/JoyFramework/wight/recyclerview/MoreGameAdapter;Landroid/view/View;)V

    return-object v0
.end method

.method public setOnItemClickListener(Lcom/JoyFramework/wight/recyclerview/MoreGameAdapter$OnItemClickListener;)V
    .registers 2

    .prologue
    .line 75
    iput-object p1, p0, Lcom/JoyFramework/wight/recyclerview/MoreGameAdapter;->onItemClickListener:Lcom/JoyFramework/wight/recyclerview/MoreGameAdapter$OnItemClickListener;

    .line 76
    return-void
.end method
