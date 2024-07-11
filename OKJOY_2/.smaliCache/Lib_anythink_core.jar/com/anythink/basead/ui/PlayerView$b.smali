.class final Lcom/anythink/basead/ui/PlayerView$b;
.super Landroid/view/View$BaseSavedState;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/basead/ui/PlayerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/anythink/basead/ui/PlayerView$b;",
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

    .line 243
    new-instance v0, Lcom/anythink/basead/ui/PlayerView$b$1;

    invoke-direct {v0}, Lcom/anythink/basead/ui/PlayerView$b$1;-><init>()V

    sput-object v0, Lcom/anythink/basead/ui/PlayerView$b;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 212
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 213
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/anythink/basead/ui/PlayerView$b;->a:I

    .line 214
    const/4 v0, 0x6

    new-array v0, v0, [Z

    .line 215
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBooleanArray([Z)V

    .line 216
    const/4 p1, 0x0

    aget-boolean p1, v0, p1

    iput-boolean p1, p0, Lcom/anythink/basead/ui/PlayerView$b;->b:Z

    .line 217
    const/4 p1, 0x1

    aget-boolean p1, v0, p1

    iput-boolean p1, p0, Lcom/anythink/basead/ui/PlayerView$b;->c:Z

    .line 218
    const/4 p1, 0x2

    aget-boolean p1, v0, p1

    iput-boolean p1, p0, Lcom/anythink/basead/ui/PlayerView$b;->d:Z

    .line 219
    const/4 p1, 0x3

    aget-boolean p1, v0, p1

    iput-boolean p1, p0, Lcom/anythink/basead/ui/PlayerView$b;->e:Z

    .line 220
    const/4 p1, 0x4

    aget-boolean p1, v0, p1

    iput-boolean p1, p0, Lcom/anythink/basead/ui/PlayerView$b;->f:Z

    .line 221
    const/4 p1, 0x5

    aget-boolean p1, v0, p1

    iput-boolean p1, p0, Lcom/anythink/basead/ui/PlayerView$b;->g:Z

    .line 222
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .registers 2

    .line 226
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 227
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 3

    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SavedState(\nsavePosition - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/anythink/basead/ui/PlayerView$b;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nsaveVideoPlay25 - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/anythink/basead/ui/PlayerView$b;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nsaveVideoPlay50 - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/anythink/basead/ui/PlayerView$b;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nsaveVideoPlay75 - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/anythink/basead/ui/PlayerView$b;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nsaveIsVideoStart - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/anythink/basead/ui/PlayerView$b;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nsaveIsVideoPlayCompletion - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/anythink/basead/ui/PlayerView$b;->f:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nsaveIsMute - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/anythink/basead/ui/PlayerView$b;->g:Z

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
    .registers 5

    .line 231
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 232
    iget p2, p0, Lcom/anythink/basead/ui/PlayerView$b;->a:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 233
    const/4 p2, 0x6

    new-array p2, p2, [Z

    .line 234
    iget-boolean v0, p0, Lcom/anythink/basead/ui/PlayerView$b;->b:Z

    const/4 v1, 0x0

    aput-boolean v0, p2, v1

    .line 235
    iget-boolean v0, p0, Lcom/anythink/basead/ui/PlayerView$b;->c:Z

    const/4 v1, 0x1

    aput-boolean v0, p2, v1

    .line 236
    iget-boolean v0, p0, Lcom/anythink/basead/ui/PlayerView$b;->d:Z

    const/4 v1, 0x2

    aput-boolean v0, p2, v1

    .line 237
    iget-boolean v0, p0, Lcom/anythink/basead/ui/PlayerView$b;->e:Z

    const/4 v1, 0x3

    aput-boolean v0, p2, v1

    .line 238
    iget-boolean v0, p0, Lcom/anythink/basead/ui/PlayerView$b;->f:Z

    const/4 v1, 0x4

    aput-boolean v0, p2, v1

    .line 239
    iget-boolean v0, p0, Lcom/anythink/basead/ui/PlayerView$b;->g:Z

    const/4 v1, 0x5

    aput-boolean v0, p2, v1

    .line 240
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 241
    return-void
.end method
