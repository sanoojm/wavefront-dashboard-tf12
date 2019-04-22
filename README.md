# wf-dashboard

Create, Update, Delete Wavefront Dashboards with Dynamic charts, rows and sections. Using the features of Terrafrom v0.12.0, wavefront dashboards (with nested json) are no longer static blocks. Create complex dashboards dyanmically using terrafrom 12.

NB: This is a pre-release build of Terraform and it may contain bugs

## Creating new Dashboard.

Fork the repo. To ensure that the current teerraform state file is not corrupted on reverse merge.

Terrafrom binary for tf12 is shipped with this repo. Use ./terrafrom12 for further terrafrom commands.


Generate and export the Wavefront Token 

```
export WAVEFRONT_TOKEN=<wavefront-token>
```

Run terrafrom init to load the plugins and initialize.

```
./terrafrom12 init
```
Run terrafrom plan to see the changes.

```
./terrafrom12 plan
```

Once the changes are validated, run terrafrom apply

```
./terrafrom12 apply
```
