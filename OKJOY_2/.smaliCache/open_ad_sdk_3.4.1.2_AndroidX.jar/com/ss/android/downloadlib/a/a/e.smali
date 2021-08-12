.class public Lcom/ss/android/downloadlib/a/a/e;
.super Lcom/ss/android/downloadlib/a/a/a;
.source "RequestHeader.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/ss/android/downloadlib/a/a/e;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:I
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
        b = 0x4
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 6
    const/4 v0, 0x0

    sput-object v0, Lcom/ss/android/downloadlib/a/a/e;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 5
    invoke-direct {p0}, Lcom/ss/android/downloadlib/a/a/a;-><init>()V

    .line 7
    const/4 v0, 0x1

    iput v0, p0, Lcom/ss/android/downloadlib/a/a/e;->a:I

    return-void
.end method
