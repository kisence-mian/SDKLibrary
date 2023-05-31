.class public Lcom/JoyFramework/wight/recyclerview/CarouselLayoutManager$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/JoyFramework/wight/recyclerview/CarouselLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# static fields
.field private static final DEFAULT_SPEED:F = 1.0f

.field private static final MIN_SCALE:F = 0.5f


# instance fields
.field private context:Landroid/content/Context;

.field private distanceToBottom:I

.field private itemSpace:I

.field private maxVisibleItemCount:I

.field private minScale:F

.field private moveSpeed:F

.field private orientation:I

.field private reverseLayout:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    iput p2, p0, Lcom/JoyFramework/wight/recyclerview/CarouselLayoutManager$Builder;->itemSpace:I

    .line 124
    iput-object p1, p0, Lcom/JoyFramework/wight/recyclerview/CarouselLayoutManager$Builder;->context:Landroid/content/Context;

    .line 125
    iput v1, p0, Lcom/JoyFramework/wight/recyclerview/CarouselLayoutManager$Builder;->orientation:I

    .line 126
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/JoyFramework/wight/recyclerview/CarouselLayoutManager$Builder;->minScale:F

    .line 127
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/JoyFramework/wight/recyclerview/CarouselLayoutManager$Builder;->moveSpeed:F

    .line 128
    iput-boolean v1, p0, Lcom/JoyFramework/wight/recyclerview/CarouselLayoutManager$Builder;->reverseLayout:Z

    .line 129
    const/4 v0, -0x1

    iput v0, p0, Lcom/JoyFramework/wight/recyclerview/CarouselLayoutManager$Builder;->maxVisibleItemCount:I

    .line 130
    const v0, 0x7fffffff

    iput v0, p0, Lcom/JoyFramework/wight/recyclerview/CarouselLayoutManager$Builder;->distanceToBottom:I

    .line 131
    return-void
.end method

.method static synthetic access$000(Lcom/JoyFramework/wight/recyclerview/CarouselLayoutManager$Builder;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/JoyFramework/wight/recyclerview/CarouselLayoutManager$Builder;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/JoyFramework/wight/recyclerview/CarouselLayoutManager$Builder;)I
    .registers 2

    .prologue
    .line 109
    iget v0, p0, Lcom/JoyFramework/wight/recyclerview/CarouselLayoutManager$Builder;->itemSpace:I

    return v0
.end method

.method static synthetic access$200(Lcom/JoyFramework/wight/recyclerview/CarouselLayoutManager$Builder;)F
    .registers 2

    .prologue
    .line 109
    iget v0, p0, Lcom/JoyFramework/wight/recyclerview/CarouselLayoutManager$Builder;->minScale:F

    return v0
.end method

.method static synthetic access$300(Lcom/JoyFramework/wight/recyclerview/CarouselLayoutManager$Builder;)I
    .registers 2

    .prologue
    .line 109
    iget v0, p0, Lcom/JoyFramework/wight/recyclerview/CarouselLayoutManager$Builder;->orientation:I

    return v0
.end method

.method static synthetic access$400(Lcom/JoyFramework/wight/recyclerview/CarouselLayoutManager$Builder;)I
    .registers 2

    .prologue
    .line 109
    iget v0, p0, Lcom/JoyFramework/wight/recyclerview/CarouselLayoutManager$Builder;->maxVisibleItemCount:I

    return v0
.end method

.method static synthetic access$500(Lcom/JoyFramework/wight/recyclerview/CarouselLayoutManager$Builder;)F
    .registers 2

    .prologue
    .line 109
    iget v0, p0, Lcom/JoyFramework/wight/recyclerview/CarouselLayoutManager$Builder;->moveSpeed:F

    return v0
.end method

.method static synthetic access$600(Lcom/JoyFramework/wight/recyclerview/CarouselLayoutManager$Builder;)I
    .registers 2

    .prologue
    .line 109
    iget v0, p0, Lcom/JoyFramework/wight/recyclerview/CarouselLayoutManager$Builder;->distanceToBottom:I

    return v0
.end method

.method static synthetic access$700(Lcom/JoyFramework/wight/recyclerview/CarouselLayoutManager$Builder;)Z
    .registers 2

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/JoyFramework/wight/recyclerview/CarouselLayoutManager$Builder;->reverseLayout:Z

    return v0
.end method


# virtual methods
.method public build()Lcom/JoyFramework/wight/recyclerview/CarouselLayoutManager;
    .registers 2

    .prologue
    .line 164
    new-instance v0, Lcom/JoyFramework/wight/recyclerview/CarouselLayoutManager;

    invoke-direct {v0, p0}, Lcom/JoyFramework/wight/recyclerview/CarouselLayoutManager;-><init>(Lcom/JoyFramework/wight/recyclerview/CarouselLayoutManager$Builder;)V

    return-object v0
.end method

.method public setDistanceToBottom(I)Lcom/JoyFramework/wight/recyclerview/CarouselLayoutManager$Builder;
    .registers 2

    .prologue
    .line 159
    iput p1, p0, Lcom/JoyFramework/wight/recyclerview/CarouselLayoutManager$Builder;->distanceToBottom:I

    .line 160
    return-object p0
.end method

.method public setMaxVisibleItemCount(I)Lcom/JoyFramework/wight/recyclerview/CarouselLayoutManager$Builder;
    .registers 2

    .prologue
    .line 154
    iput p1, p0, Lcom/JoyFramework/wight/recyclerview/CarouselLayoutManager$Builder;->maxVisibleItemCount:I

    .line 155
    return-object p0
.end method

.method public setMinScale(F)Lcom/JoyFramework/wight/recyclerview/CarouselLayoutManager$Builder;
    .registers 2

    .prologue
    .line 139
    iput p1, p0, Lcom/JoyFramework/wight/recyclerview/CarouselLayoutManager$Builder;->minScale:F

    .line 140
    return-object p0
.end method

.method public setMoveSpeed(F)Lcom/JoyFramework/wight/recyclerview/CarouselLayoutManager$Builder;
    .registers 2

    .prologue
    .line 149
    iput p1, p0, Lcom/JoyFramework/wight/recyclerview/CarouselLayoutManager$Builder;->moveSpeed:F

    .line 150
    return-object p0
.end method

.method public setOrientation(I)Lcom/JoyFramework/wight/recyclerview/CarouselLayoutManager$Builder;
    .registers 2

    .prologue
    .line 134
    iput p1, p0, Lcom/JoyFramework/wight/recyclerview/CarouselLayoutManager$Builder;->orientation:I

    .line 135
    return-object p0
.end method

.method public setReverseLayout(Z)Lcom/JoyFramework/wight/recyclerview/CarouselLayoutManager$Builder;
    .registers 2

    .prologue
    .line 144
    iput-boolean p1, p0, Lcom/JoyFramework/wight/recyclerview/CarouselLayoutManager$Builder;->reverseLayout:Z

    .line 145
    return-object p0
.end method
