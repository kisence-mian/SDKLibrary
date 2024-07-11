.class public Lcom/ss/android/downloadlib/a/a/f;
.super Lcom/ss/android/downloadlib/a/a/a;
.source "StartDownloadIPCRequest.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public a:Ljava/lang/String;
    .annotation runtime Lcom/ss/android/downloadlib/a/a/h;
        b = 0x1
    .end annotation
.end field

.field public b:Ljava/lang/String;
    .annotation runtime Lcom/ss/android/downloadlib/a/a/h;
        b = 0x2
    .end annotation
.end field

.field public c:Ljava/lang/String;
    .annotation runtime Lcom/ss/android/downloadlib/a/a/h;
        b = 0x3
    .end annotation
.end field

.field public d:I
    .annotation runtime Lcom/ss/android/downloadlib/a/a/h;
        b = 0x5
    .end annotation
.end field

.field public e:I
    .annotation runtime Lcom/ss/android/downloadlib/a/a/h;
        b = 0x7
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 6
    const/4 v0, 0x0

    sput-object v0, Lcom/ss/android/downloadlib/a/a/f;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Lcom/ss/android/downloadlib/a/a/a;-><init>()V

    return-void
.end method
