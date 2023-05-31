.class final Lcom/anythink/myoffer/ui/f$b;
.super Landroid/view/View$BaseSavedState;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/myoffer/ui/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/anythink/myoffer/ui/f$b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:I

.field b:Z

.field c:Z

.field d:Z

.field e:Z

.field f:Z

.field g:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 240
    new-instance v0, Lcom/anythink/myoffer/ui/f$b$1;

    invoke-direct {v0}, Lcom/anythink/myoffer/ui/f$b$1;-><init>()V

    sput-object v0, Lcom/anythink/myoffer/ui/f$b;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    .prologue
    .line 209
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 210
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/anythink/myoffer/ui/f$b;->a:I

    .line 211
    const/4 v0, 0x6

    new-array v0, v0, [Z

    .line 212
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBooleanArray([Z)V

    .line 213
    const/4 v1, 0x0

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/anythink/myoffer/ui/f$b;->b:Z

    .line 214
    const/4 v1, 0x1

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/anythink/myoffer/ui/f$b;->c:Z

    .line 215
    const/4 v1, 0x2

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/anythink/myoffer/ui/f$b;->d:Z

    .line 216
    const/4 v1, 0x3

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/anythink/myoffer/ui/f$b;->e:Z

    .line 217
    const/4 v1, 0x4

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/anythink/myoffer/ui/f$b;->f:Z

    .line 218
    const/4 v1, 0x5

    aget-boolean v0, v0, v1

    iput-boolean v0, p0, Lcom/anythink/myoffer/ui/f$b;->g:Z

    .line 219
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .registers 2

    .prologue
    .line 223
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 224
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 3

    .prologue
    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SavedState(\nsavePosition - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/anythink/myoffer/ui/f$b;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nsaveVideoPlay25 - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/anythink/myoffer/ui/f$b;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nsaveVideoPlay50 - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/anythink/myoffer/ui/f$b;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nsaveVideoPlay75 - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/anythink/myoffer/ui/f$b;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nsaveIsVideoStart - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/anythink/myoffer/ui/f$b;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nsaveIsVideoPlayCompletion - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/anythink/myoffer/ui/f$b;->f:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nsaveIsMute - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/anythink/myoffer/ui/f$b;->g:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    .prologue
    .line 228
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 229
    iget v0, p0, Lcom/anythink/myoffer/ui/f$b;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 230
    const/4 v0, 0x6

    new-array v0, v0, [Z

    .line 231
    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/anythink/myoffer/ui/f$b;->b:Z

    aput-boolean v2, v0, v1

    .line 232
    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/anythink/myoffer/ui/f$b;->c:Z

    aput-boolean v2, v0, v1

    .line 233
    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/anythink/myoffer/ui/f$b;->d:Z

    aput-boolean v2, v0, v1

    .line 234
    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/anythink/myoffer/ui/f$b;->e:Z

    aput-boolean v2, v0, v1

    .line 235
    const/4 v1, 0x4

    iget-boolean v2, p0, Lcom/anythink/myoffer/ui/f$b;->f:Z

    aput-boolean v2, v0, v1

    .line 236
    const/4 v1, 0x5

    iget-boolean v2, p0, Lcom/anythink/myoffer/ui/f$b;->g:Z

    aput-boolean v2, v0, v1

    .line 237
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 238
    return-void
.end method
