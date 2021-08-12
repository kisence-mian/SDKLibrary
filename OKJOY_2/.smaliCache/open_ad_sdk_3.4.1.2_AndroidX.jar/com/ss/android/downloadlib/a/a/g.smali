.class public Lcom/ss/android/downloadlib/a/a/g;
.super Lcom/ss/android/downloadlib/a/a/a;
.source "XDataHolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Lcom/ss/android/downloadlib/a/a/a;",
        ">",
        "Lcom/ss/android/downloadlib/a/a/a;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public a:Ljava/lang/String;
    .annotation runtime Lcom/ss/android/downloadlib/a/a/h;
        b = 0x1
    .end annotation
.end field

.field public b:Lcom/ss/android/downloadlib/a/a/e;
    .annotation runtime Lcom/ss/android/downloadlib/a/a/h;
        b = 0x2
    .end annotation
.end field

.field public c:Lcom/ss/android/downloadlib/a/a/a;
    .annotation runtime Lcom/ss/android/downloadlib/a/a/h;
        b = 0x3
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 6
    const/4 v0, 0x0

    sput-object v0, Lcom/ss/android/downloadlib/a/a/g;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Lcom/ss/android/downloadlib/a/a/a;-><init>()V

    return-void
.end method
