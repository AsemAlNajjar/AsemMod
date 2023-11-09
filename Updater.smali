.class public Lid/nusantara/updater/Updater;
.super Ljava/lang/Object;
.source "Updater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lid/nusantara/updater/Updater$loadUpdate;
    }
.end annotation


# instance fields
.field private isAuto:Z

.field private mChangelog:Ljava/lang/String;

.field private mContext:Landroid/app/Activity;

.field private mUrl:Ljava/lang/String;

.field private mUrlDownload:Ljava/lang/String;

.field private mVersion:Ljava/lang/String;

.field private mVersionCode:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Z)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "https://raw.githubusercontent.com/DeltalabsStudio/api/master/mod/delta-yowa.json"

    iput-object v0, p0, Lid/nusantara/updater/Updater;->mUrl:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lid/nusantara/updater/Updater;->mVersion:Ljava/lang/String;

    iput-object v0, p0, Lid/nusantara/updater/Updater;->mChangelog:Ljava/lang/String;

    iput-object v0, p0, Lid/nusantara/updater/Updater;->mUrlDownload:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lid/nusantara/updater/Updater;->mVersionCode:I

    iput-object p1, p0, Lid/nusantara/updater/Updater;->mContext:Landroid/app/Activity;

    iput-boolean p2, p0, Lid/nusantara/updater/Updater;->isAuto:Z

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lid/nusantara/updater/Updater;->mUrl:Ljava/lang/String;

    return-void
.end method

.method public static A00()Ljava/lang/String;
    .registers 1

    const-string v0, "delta_appname"

    invoke-static {v0}, Lid/nusantara/utils/Tools;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static A0A()I
    .registers 2

    invoke-static {}, Lid/nusantara/updater/Updater;->A0D()I

    move-result v0

    const-string v1, "delta_code"

    invoke-static {v1, v0}, Lid/nusantara/utils/Prefs;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static A0B(Ljava/lang/String;)V
    .registers 2

    const-string v0, "key_version"

    invoke-static {v0, p0}, Lid/nusantara/utils/Prefs;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static A0B()Z
    .registers 2

    invoke-static {}, Lid/nusantara/updater/Updater;->A0D()I

    move-result v0

    invoke-static {}, Lid/nusantara/updater/Updater;->A0A()I

    move-result v1

    if-ge v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public static A0BV()Ljava/lang/String;
    .registers 2

    invoke-static {}, Lid/nusantara/updater/Updater;->A00()Ljava/lang/String;

    move-result-object v0

    const-string v1, "key_version"

    invoke-static {v1, v0}, Lid/nusantara/utils/Prefs;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static A0C()Ljava/lang/String;
    .registers 2

    const-string v0, "key_url"

    const-string v1, "https://bit.ly/DELTALABSWA"

    invoke-static {v0, v1}, Lid/nusantara/utils/Prefs;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static A0C(Ljava/lang/String;)V
    .registers 2

    const-string v0, "key_url"

    invoke-static {v0, p0}, Lid/nusantara/utils/Prefs;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static A0D()I
    .registers 1

    const-string v0, "999"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static A0D(I)V
    .registers 2

    const-string v0, "delta_code"

    invoke-static {v0, p0}, Lid/nusantara/utils/Prefs;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$000(Lid/nusantara/updater/Updater;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lid/nusantara/updater/Updater;->startBrowserIntent(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lid/nusantara/updater/Updater;)Z
    .registers 2

    iget-boolean v0, p0, Lid/nusantara/updater/Updater;->isAuto:Z

    return v0
.end method

.method static synthetic access$200(Lid/nusantara/updater/Updater;)Landroid/app/Activity;
    .registers 2

    iget-object v0, p0, Lid/nusantara/updater/Updater;->mContext:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$300(Lid/nusantara/updater/Updater;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lid/nusantara/updater/Updater;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lid/nusantara/updater/Updater;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lid/nusantara/updater/Updater;->mVersion:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lid/nusantara/updater/Updater;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lid/nusantara/updater/Updater;->mVersion:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lid/nusantara/updater/Updater;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lid/nusantara/updater/Updater;->mUrlDownload:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lid/nusantara/updater/Updater;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lid/nusantara/updater/Updater;->mUrlDownload:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lid/nusantara/updater/Updater;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lid/nusantara/updater/Updater;->mChangelog:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lid/nusantara/updater/Updater;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lid/nusantara/updater/Updater;->mChangelog:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lid/nusantara/updater/Updater;)I
    .registers 2

    iget v0, p0, Lid/nusantara/updater/Updater;->mVersionCode:I

    return v0
.end method

.method static synthetic access$702(Lid/nusantara/updater/Updater;I)I
    .registers 2

    iput p1, p0, Lid/nusantara/updater/Updater;->mVersionCode:I

    return p1
.end method

.method private startBrowserIntent(Ljava/lang/String;)V
    .registers 5

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v1, p0, Lid/nusantara/updater/Updater;->mContext:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_11

    goto :goto_15

    :catch_11
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_15
    return-void
.end method


# virtual methods
.method public checkUpdate()V
    .registers 4

    new-instance v0, Lid/nusantara/updater/Updater$loadUpdate;

    invoke-direct {v0, p0}, Lid/nusantara/updater/Updater$loadUpdate;-><init>(Lid/nusantara/updater/Updater;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lid/nusantara/updater/Updater$loadUpdate;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public show(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 14

    :try_start_0
    iget-object v0, p0, Lid/nusantara/updater/Updater;->mContext:Landroid/app/Activity;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const-string v1, "delta_dialog_updater"

    invoke-static {v1}, Lid/nusantara/utils/Tools;->intLayout(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    new-instance v2, LX/BottomSheetDialog;

    iget-object v3, p0, Lid/nusantara/updater/Updater;->mContext:Landroid/app/Activity;

    const-string v4, "BottomDialog"

    invoke-static {v4}, Lid/nusantara/utils/Tools;->intStyle(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v3, v4}, LX/BottomSheetDialog;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v2, v1}, LX/BottomSheetDialog;->setContentView(Landroid/view/View;)V

    const-string v3, "mVersion"

    invoke-static {v3}, Lid/nusantara/utils/Tools;->intId(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const-string v4, "mChangelog"

    invoke-static {v4}, Lid/nusantara/utils/Tools;->intId(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const-string v5, "mCancelButton"

    invoke-static {v5}, Lid/nusantara/utils/Tools;->intId(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    const-string v6, "mUpdateButton"

    invoke-static {v6}, Lid/nusantara/utils/Tools;->intId(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    new-instance v7, Lid/nusantara/updater/Updater$1;

    invoke-direct {v7, p0, p1, v2}, Lid/nusantara/updater/Updater$1;-><init>(Lid/nusantara/updater/Updater;Ljava/lang/String;LX/BottomSheetDialog;)V

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v7, Lid/nusantara/updater/Updater$2;

    invoke-direct {v7, p0, p3, v2}, Lid/nusantara/updater/Updater$2;-><init>(Lid/nusantara/updater/Updater;Ljava/lang/String;LX/BottomSheetDialog;)V

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v7, " - "

    const-string v8, "\n"

    invoke-virtual {p2, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lid/nusantara/updater/Updater;->A0D()I

    move-result v7

    if-le p4, v7, :cond_83

    const/4 v8, 0x0

    invoke-static {p1, v8}, Lid/nusantara/utils/Prefs;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-nez v8, :cond_83

    invoke-virtual {v2}, LX/BottomSheetDialog;->show()V

    :cond_83
    iget-boolean v8, p0, Lid/nusantara/updater/Updater;->isAuto:Z

    if-nez v8, :cond_92

    if-le p4, v7, :cond_8d

    invoke-virtual {v2}, LX/BottomSheetDialog;->show()V

    goto :goto_92

    :cond_8d
    const-string v8, "\u0625\u0635\u062f\u0627\u0631\u0643 \u0627\u0644\u062d\u0627\u0644\u064a \u0645\u064f\u062d\u064e\u062f\u062b \u0628\u0627\u0644\u0641\u0639\u0644 ... \u0644\u0627 \u064a\u0648\u062c\u062f \u062a\u062d\u062f\u064a\u062b\u0627\u062a \u0645\u062a\u0648\u0641\u0631\u0629"

    invoke-static {v8}, Lid/nusantara/utils/Tools;->showToast(Ljava/lang/String;)V
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_92} :catch_93

    :cond_92
    :goto_92
    goto :goto_97

    :catch_93
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_97
    return-void
.end method
