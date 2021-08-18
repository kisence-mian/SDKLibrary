.class Landroid/support/v4/widget/ListViewCompatKitKat;
.super Ljava/lang/Object;
.source "ListViewCompatKitKat.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static scrollListBy(Landroid/widget/ListView;I)V
    .registers 2
    .param p0, "listView"    # Landroid/widget/ListView;
    .param p1, "y"    # I

    .line 24
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->scrollListBy(I)V

    .line 25
    return-void
.end method
