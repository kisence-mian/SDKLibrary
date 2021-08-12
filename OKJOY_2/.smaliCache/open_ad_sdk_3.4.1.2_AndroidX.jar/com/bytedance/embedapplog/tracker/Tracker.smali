.class public Lcom/bytedance/embedapplog/tracker/Tracker;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:F

.field private static b:F

.field private static c:[I

.field public static sClick:Lcom/bytedance/embedapplog/ar;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 33
    const/4 v0, 0x0

    sput-object v0, Lcom/bytedance/embedapplog/tracker/Tracker;->sClick:Lcom/bytedance/embedapplog/ar;

    .line 39
    const/4 v0, 0x2

    new-array v0, v0, [I

    sput-object v0, Lcom/bytedance/embedapplog/tracker/Tracker;->c:[I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dismiss(Landroid/app/Dialog;)V
    .registers 1

    .line 267
    return-void
.end method

.method public static dispatchTouchEvent(Landroid/view/MotionEvent;)V
    .registers 3

    .line 287
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1d

    .line 288
    sget-boolean v0, Lcom/bytedance/embedapplog/bo;->b:Z

    if-eqz v0, :cond_11

    .line 289
    const/4 v0, 0x0

    const-string v1, "tracker:enter dispatchTouchEvent"

    invoke-static {v1, v0}, Lcom/bytedance/embedapplog/bo;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 291
    :cond_11
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    sput v0, Lcom/bytedance/embedapplog/tracker/Tracker;->a:F

    .line 292
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawY()F

    move-result p0

    sput p0, Lcom/bytedance/embedapplog/tracker/Tracker;->b:F

    .line 294
    :cond_1d
    return-void
.end method

.method public static hide(Landroid/app/Dialog;)V
    .registers 1

    .line 270
    return-void
.end method

.method public static onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 2

    .line 42
    invoke-static {p0}, Lcom/bytedance/embedapplog/tracker/Tracker;->onClick(Landroid/view/View;)V

    .line 43
    return-void
.end method

.method public static onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .registers 2

    .line 46
    invoke-virtual {p0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Lcom/bytedance/embedapplog/tracker/Tracker;->onClick(Landroid/view/View;)V

    .line 47
    return-void
.end method

.method public static onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .registers 6

    .line 51
    invoke-static {p1}, Lcom/bytedance/embedapplog/tracker/Tracker;->onClick(Landroid/view/View;)V

    .line 52
    const/4 p0, 0x0

    return p0
.end method

.method public static onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 85
    instance-of v0, p0, Landroid/app/AlertDialog;

    if-eqz v0, :cond_e

    .line 86
    check-cast p0, Landroid/app/AlertDialog;

    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p0

    invoke-static {p0}, Lcom/bytedance/embedapplog/tracker/Tracker;->onClick(Landroid/view/View;)V

    goto :goto_2d

    .line 87
    :cond_e
    invoke-static {p0}, Lcom/bytedance/embedapplog/bc;->i(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 88
    check-cast p0, Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p0

    invoke-static {p0}, Lcom/bytedance/embedapplog/tracker/Tracker;->onClick(Landroid/view/View;)V

    goto :goto_2d

    .line 89
    :cond_1e
    invoke-static {p0}, Lcom/bytedance/embedapplog/bc;->j(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 90
    check-cast p0, Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p0

    invoke-static {p0}, Lcom/bytedance/embedapplog/tracker/Tracker;->onClick(Landroid/view/View;)V

    .line 92
    :cond_2d
    :goto_2d
    return-void
.end method

.method public static onClick(Landroid/view/View;)V
    .registers 6

    .line 56
    if-eqz p0, :cond_8e

    sget-boolean v0, Lcom/bytedance/embedapplog/bo;->a:Z

    if-eqz v0, :cond_8e

    .line 57
    invoke-static {p0}, Lcom/bytedance/embedapplog/be;->a(Landroid/view/View;)Lcom/bytedance/embedapplog/ar;

    move-result-object v0

    .line 58
    const/4 v1, 0x0

    if-eqz v0, :cond_8b

    .line 59
    sget-boolean v2, Lcom/bytedance/embedapplog/bo;->b:Z

    if-eqz v2, :cond_13

    .line 60
    sput-object v0, Lcom/bytedance/embedapplog/tracker/Tracker;->sClick:Lcom/bytedance/embedapplog/ar;

    .line 62
    :cond_13
    sget-object v2, Lcom/bytedance/embedapplog/tracker/Tracker;->c:[I

    invoke-virtual {p0, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 63
    sget-object v2, Lcom/bytedance/embedapplog/tracker/Tracker;->c:[I

    const/4 v3, 0x0

    aget v3, v2, v3

    .line 64
    const/4 v4, 0x1

    aget v2, v2, v4

    .line 65
    sget v4, Lcom/bytedance/embedapplog/tracker/Tracker;->a:F

    int-to-float v3, v3

    sub-float/2addr v4, v3

    float-to-int v3, v4

    .line 66
    sget v4, Lcom/bytedance/embedapplog/tracker/Tracker;->b:F

    int-to-float v2, v2

    sub-float/2addr v4, v2

    float-to-int v2, v4

    .line 67
    if-ltz v3, :cond_3e

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    if-gt v3, v4, :cond_3e

    if-ltz v2, :cond_3e

    .line 68
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    if-gt v2, v4, :cond_3e

    .line 69
    iput v3, v0, Lcom/bytedance/embedapplog/ar;->n:I

    .line 70
    iput v2, v0, Lcom/bytedance/embedapplog/ar;->o:I

    .line 72
    :cond_3e
    const/4 v2, 0x0

    sput v2, Lcom/bytedance/embedapplog/tracker/Tracker;->a:F

    .line 73
    sput v2, Lcom/bytedance/embedapplog/tracker/Tracker;->b:F

    .line 74
    sget-boolean v2, Lcom/bytedance/embedapplog/bo;->b:Z

    if-eqz v2, :cond_87

    .line 75
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tracker:on click: width = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " height = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v2, " touchX = "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget v2, v0, Lcom/bytedance/embedapplog/ar;->n:I

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v2, " touchY = "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget v2, v0, Lcom/bytedance/embedapplog/ar;->o:I

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/bytedance/embedapplog/bo;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 77
    :cond_87
    invoke-static {v0}, Lcom/bytedance/embedapplog/k;->a(Lcom/bytedance/embedapplog/aq;)V

    .line 78
    goto :goto_8e

    .line 79
    :cond_8b
    invoke-static {v1}, Lcom/bytedance/embedapplog/bo;->a(Ljava/lang/Throwable;)V

    .line 82
    :cond_8e
    :goto_8e
    return-void
.end method

.method public static onFocusChange(Landroid/view/View;Z)V
    .registers 2

    .line 95
    instance-of p1, p0, Landroid/widget/TextView;

    if-eqz p1, :cond_7

    .line 96
    invoke-static {p0}, Lcom/bytedance/embedapplog/tracker/Tracker;->onClick(Landroid/view/View;)V

    .line 98
    :cond_7
    return-void
.end method

.method public static onGroupClick(Landroid/widget/ExpandableListView;Landroid/view/View;IJ)Z
    .registers 5

    .line 101
    invoke-static {p1}, Lcom/bytedance/embedapplog/tracker/Tracker;->onClick(Landroid/view/View;)V

    .line 102
    const/4 p0, 0x1

    return p0
.end method

.method public static onHiddenChanged(Landroid/app/Fragment;Z)V
    .registers 2

    .line 165
    if-eqz p1, :cond_6

    .line 166
    invoke-static {p0}, Lcom/bytedance/embedapplog/f;->b(Ljava/lang/Object;)V

    goto :goto_9

    .line 168
    :cond_6
    invoke-static {p0}, Lcom/bytedance/embedapplog/f;->a(Ljava/lang/Object;)V

    .line 170
    :goto_9
    return-void
.end method

.method public static onHiddenChanged(Landroid/app/ListFragment;Z)V
    .registers 2

    .line 238
    if-eqz p1, :cond_6

    .line 239
    invoke-static {p0}, Lcom/bytedance/embedapplog/f;->b(Ljava/lang/Object;)V

    goto :goto_9

    .line 241
    :cond_6
    invoke-static {p0}, Lcom/bytedance/embedapplog/f;->a(Ljava/lang/Object;)V

    .line 243
    :goto_9
    return-void
.end method

.method public static onHiddenChanged(Landroid/preference/PreferenceFragment;Z)V
    .registers 2

    .line 214
    if-eqz p1, :cond_6

    .line 215
    invoke-static {p0}, Lcom/bytedance/embedapplog/f;->b(Ljava/lang/Object;)V

    goto :goto_9

    .line 217
    :cond_6
    invoke-static {p0}, Lcom/bytedance/embedapplog/f;->a(Ljava/lang/Object;)V

    .line 219
    :goto_9
    return-void
.end method

.method public static onHiddenChanged(Landroid/webkit/WebViewFragment;Z)V
    .registers 2

    .line 189
    if-eqz p1, :cond_6

    .line 190
    invoke-static {p0}, Lcom/bytedance/embedapplog/f;->b(Ljava/lang/Object;)V

    goto :goto_9

    .line 192
    :cond_6
    invoke-static {p0}, Lcom/bytedance/embedapplog/f;->a(Ljava/lang/Object;)V

    .line 194
    :goto_9
    return-void
.end method

.method public static onHiddenChanged(Landroidx/fragment/app/Fragment;Z)V
    .registers 2

    .line 141
    if-eqz p1, :cond_6

    .line 142
    invoke-static {p0}, Lcom/bytedance/embedapplog/f;->b(Ljava/lang/Object;)V

    goto :goto_9

    .line 144
    :cond_6
    invoke-static {p0}, Lcom/bytedance/embedapplog/f;->a(Ljava/lang/Object;)V

    .line 146
    :goto_9
    return-void
.end method

.method public static onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 106
    invoke-static {p1}, Lcom/bytedance/embedapplog/tracker/Tracker;->onClick(Landroid/view/View;)V

    .line 107
    return-void
.end method

.method public static onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .line 254
    const/4 p0, 0x0

    return p0
.end method

.method public static onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 110
    invoke-static {p0, p1, p2, p3, p4}, Lcom/bytedance/embedapplog/tracker/Tracker;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 111
    return-void
.end method

.method public static onLocationChanged(Landroid/location/Location;)V
    .registers 1

    .line 258
    return-void
.end method

.method public static onLongClick(Landroid/view/View;)V
    .registers 1

    .line 261
    return-void
.end method

.method public static onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 1

    .line 114
    invoke-static {p0}, Lcom/bytedance/embedapplog/be;->a(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Lcom/bytedance/embedapplog/tracker/Tracker;->onClick(Landroid/view/View;)V

    .line 115
    const/4 p0, 0x0

    return p0
.end method

.method public static onOptionsItemSelected(Landroid/view/MenuItem;)V
    .registers 1

    .line 119
    invoke-static {p0}, Lcom/bytedance/embedapplog/tracker/Tracker;->onMenuItemClick(Landroid/view/MenuItem;)Z

    .line 120
    return-void
.end method

.method public static onPageFinished(Landroid/webkit/WebViewClient;Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 3

    .line 283
    invoke-static {p1}, Lcom/bytedance/embedapplog/tracker/WebViewJsUtil;->injectJs(Landroid/webkit/WebView;)V

    .line 284
    return-void
.end method

.method public static onPageStarted(Landroid/webkit/WebViewClient;Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 4

    .line 276
    invoke-static {p1}, Lcom/bytedance/embedapplog/tracker/WebViewJsUtil;->injectJsCallback(Landroid/webkit/WebView;)V

    .line 277
    return-void
.end method

.method public static onPause(Landroid/app/Fragment;)V
    .registers 1

    .line 161
    invoke-static {p0}, Lcom/bytedance/embedapplog/f;->b(Ljava/lang/Object;)V

    .line 162
    return-void
.end method

.method public static onPause(Landroid/app/ListFragment;)V
    .registers 1

    .line 234
    invoke-static {p0}, Lcom/bytedance/embedapplog/f;->b(Ljava/lang/Object;)V

    .line 235
    return-void
.end method

.method public static onPause(Landroid/preference/PreferenceFragment;)V
    .registers 1

    .line 210
    invoke-static {p0}, Lcom/bytedance/embedapplog/f;->b(Ljava/lang/Object;)V

    .line 211
    return-void
.end method

.method public static onPause(Landroid/webkit/WebViewFragment;)V
    .registers 1

    .line 185
    invoke-static {p0}, Lcom/bytedance/embedapplog/f;->b(Ljava/lang/Object;)V

    .line 186
    return-void
.end method

.method public static onPause(Landroidx/fragment/app/Fragment;)V
    .registers 1

    .line 137
    invoke-static {p0}, Lcom/bytedance/embedapplog/f;->b(Ljava/lang/Object;)V

    .line 138
    return-void
.end method

.method public static onRatingChanged(Landroid/widget/RatingBar;FZ)V
    .registers 3

    .line 123
    if-eqz p2, :cond_5

    .line 124
    invoke-static {p0}, Lcom/bytedance/embedapplog/tracker/Tracker;->onClick(Landroid/view/View;)V

    .line 126
    :cond_5
    return-void
.end method

.method public static onResume(Landroid/app/Fragment;)V
    .registers 1

    .line 157
    invoke-static {p0}, Lcom/bytedance/embedapplog/f;->a(Ljava/lang/Object;)V

    .line 158
    return-void
.end method

.method public static onResume(Landroid/app/ListFragment;)V
    .registers 1

    .line 230
    invoke-static {p0}, Lcom/bytedance/embedapplog/f;->a(Ljava/lang/Object;)V

    .line 231
    return-void
.end method

.method public static onResume(Landroid/preference/PreferenceFragment;)V
    .registers 1

    .line 206
    invoke-static {p0}, Lcom/bytedance/embedapplog/f;->a(Ljava/lang/Object;)V

    .line 207
    return-void
.end method

.method public static onResume(Landroid/webkit/WebViewFragment;)V
    .registers 1

    .line 181
    invoke-static {p0}, Lcom/bytedance/embedapplog/f;->a(Ljava/lang/Object;)V

    .line 182
    return-void
.end method

.method public static onResume(Landroidx/fragment/app/Fragment;)V
    .registers 1

    .line 133
    invoke-static {p0}, Lcom/bytedance/embedapplog/f;->a(Ljava/lang/Object;)V

    .line 134
    return-void
.end method

.method public static onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 1

    .line 129
    invoke-static {p0}, Lcom/bytedance/embedapplog/tracker/Tracker;->onClick(Landroid/view/View;)V

    .line 130
    return-void
.end method

.method public static setUserVisibleHint(Landroid/app/Fragment;Z)V
    .registers 2

    .line 173
    if-eqz p1, :cond_6

    .line 174
    invoke-static {p0}, Lcom/bytedance/embedapplog/f;->a(Ljava/lang/Object;)V

    goto :goto_9

    .line 176
    :cond_6
    invoke-static {p0}, Lcom/bytedance/embedapplog/f;->b(Ljava/lang/Object;)V

    .line 178
    :goto_9
    return-void
.end method

.method public static setUserVisibleHint(Landroid/app/ListFragment;Z)V
    .registers 2

    .line 246
    if-eqz p1, :cond_6

    .line 247
    invoke-static {p0}, Lcom/bytedance/embedapplog/f;->a(Ljava/lang/Object;)V

    goto :goto_9

    .line 249
    :cond_6
    invoke-static {p0}, Lcom/bytedance/embedapplog/f;->b(Ljava/lang/Object;)V

    .line 251
    :goto_9
    return-void
.end method

.method public static setUserVisibleHint(Landroid/preference/PreferenceFragment;Z)V
    .registers 2

    .line 222
    if-eqz p1, :cond_6

    .line 223
    invoke-static {p0}, Lcom/bytedance/embedapplog/f;->a(Ljava/lang/Object;)V

    goto :goto_9

    .line 225
    :cond_6
    invoke-static {p0}, Lcom/bytedance/embedapplog/f;->b(Ljava/lang/Object;)V

    .line 227
    :goto_9
    return-void
.end method

.method public static setUserVisibleHint(Landroid/webkit/WebViewFragment;Z)V
    .registers 2

    .line 197
    if-eqz p1, :cond_6

    .line 198
    invoke-static {p0}, Lcom/bytedance/embedapplog/f;->a(Ljava/lang/Object;)V

    goto :goto_9

    .line 200
    :cond_6
    invoke-static {p0}, Lcom/bytedance/embedapplog/f;->b(Ljava/lang/Object;)V

    .line 202
    :goto_9
    return-void
.end method

.method public static setUserVisibleHint(Landroidx/fragment/app/Fragment;Z)V
    .registers 2

    .line 149
    if-eqz p1, :cond_6

    .line 150
    invoke-static {p0}, Lcom/bytedance/embedapplog/f;->a(Ljava/lang/Object;)V

    goto :goto_9

    .line 152
    :cond_6
    invoke-static {p0}, Lcom/bytedance/embedapplog/f;->b(Ljava/lang/Object;)V

    .line 154
    :goto_9
    return-void
.end method

.method public static show(Landroid/app/Dialog;)V
    .registers 1

    .line 264
    return-void
.end method
